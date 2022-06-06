contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
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
uint256 sub_80c644f1;
address royaltiesAddress;
address stakingAddress;
address sub_bf2fa22bAddress;
mapping of uint8 stor16;
mapping of uint16 stor17;
uint16 stor18;

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

function royaltiesAddress() payable {
    return royaltiesAddress
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
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

function sub_80c644f1(?) payable {
    return sub_80c644f1
}

function owner() payable {
    return owner
}

function sub_bf2fa22b(?) payable {
    return sub_bf2fa22bAddress
}

function stakingAddress() payable {
    return stakingAddress
}

function authorizedAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
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

function sub_097f0e3c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_80c644f1 = arg1
}

function setRoyaltiesAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    royaltiesAddress = arg1
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != stakingAddress:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and sub_80c644f1 > -1 / arg2:
        revert with 'NH{q', 17
    return royaltiesAddress, arg2 * sub_80c644f1 / 100
}

function setAuthorizedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = uint8(arg2)
}

function setStakingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stakingAddress:
        revert with 0, 'Staking address already set'
    stakingAddress = arg1
}

function getWeight(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor17[arg1]:
        return stor17[arg1]
    return stor18
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_fd4af82c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_bf2fa22bAddress:
        revert with 0, 'Main minter address already set'
    sub_bf2fa22bAddress = address(arg1)
    stor16[address(arg1)] = 1
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
    if Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_e4455d5d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    if not stor16[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((64 * idx) + cd[4] + 68)] == uint16(cd[((64 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((64 * idx) + cd[4] + 36)]
        mem[32] = 17
        stor17[cd[((64 * idx) + cd[4] + 36)]] = uint16(cd[((64 * idx) + cd[4] + 68)])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
        if stakingAddress != msg.sender:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function walletOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) payable {
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor16[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not authorized'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    stor9[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = arg2
        stor7[arg2] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg2] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg2]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg2]
        stor9[arg2] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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

function symbol() payable {
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

function baseURI() payable {
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
            if stakingAddress != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not sub_bf2fa22bAddress:
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
    else:
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            require ext_code.size(sub_bf2fa22bAddress)
            call sub_bf2fa22bAddress.claimReward(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
            if stakingAddress != msg.sender:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not sub_bf2fa22bAddress:
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
    else:
        if not arg1:
            stor9[arg3] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = arg3
        else:
            require ext_code.size(sub_bf2fa22bAddress)
            call sub_bf2fa22bAddress.claimReward(uint256 arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                if s:
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
                if ceil32(stor11.length.field_1) > stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                if s:
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
                if ceil32(stor11.length.field_1) > stor11.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while stor11.length.field_1 + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
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
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
        if s:
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
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
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
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3670 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3670)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3670)]
                        if ceil32(_3670) > _3670:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3670 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3670) + 32], 
                    _3702 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3702)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3702 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3702) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3671 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3671)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3671)]
                    if ceil32(_3671) > _3671:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3671 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3671) + 32], 
                _3703 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3703)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3703 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3703) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3672 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3672)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3672)]
                    if ceil32(_3672) > _3672:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3672 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3672) + 32], 
                _3704 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3704)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3704 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3704) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3673 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3673)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3673)]
                if ceil32(_3673) > _3673:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3673 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3673) + 32], 
            _3705 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3705)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3705 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3705) + 32], 
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3674 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3674)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3674)]
                        if ceil32(_3674) > _3674:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3674 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3674) + 32], 
                    _3706 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3706)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3706 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3706) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3675 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3675)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3675)]
                    if ceil32(_3675) > _3675:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3675 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3675) + 32], 
                _3707 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3707)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3707 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3707) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3676 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3676)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3676)]
                    if ceil32(_3676) > _3676:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3676 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3676) + 32], 
                _3708 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3708)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3708 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3708) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3677 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3677)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3677)]
                if ceil32(_3677) > _3677:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3677 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3677) + 32], 
            _3709 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3709)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3709 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3709) + 32], 
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
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _4406 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4406)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4406 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4406) + 32], 
                _4422 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4422)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                if ceil32(_4422) > _4422:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4422 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4422) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _4407 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4407)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4407 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4407) + 32], 
            _4423 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4423)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
            if ceil32(_4423) > _4423:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4423 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4423) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _4408 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4408)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4408 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4408) + 32], 
            _4424 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4424)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
            if ceil32(_4424) > _4424:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4424 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4424) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _4409 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4409)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4409 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4409) + 32], 
        _4425 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4425)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
        if ceil32(_4425) > _4425:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4425 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4425) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1:
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3678 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3678)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3678)]
                    if ceil32(_3678) > _3678:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3678 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3678) + 32], 
                _3710 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3710)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                if ceil32(_3710) > _3710:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3710 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3710) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3679 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3679)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3679)]
                if ceil32(_3679) > _3679:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3679 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3679) + 32], 
            _3711 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3711)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
            if ceil32(_3711) > _3711:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3711 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3711) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3680 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3680)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3680)]
                if ceil32(_3680) > _3680:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3680 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3680) + 32], 
            _3712 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3712)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
            if ceil32(_3712) > _3712:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3712 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3712) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3681 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3681)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3681)]
            if ceil32(_3681) > _3681:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3681 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3681) + 32], 
        _3713 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3713)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
        if ceil32(_3713) > _3713:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3713 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3713) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3682 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3682)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3682)]
                    if ceil32(_3682) > _3682:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3682 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3682) + 32], 
                _3714 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3714)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3714 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3714) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3683 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                if ceil32(_3683) > _3683:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3683 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3683) + 32], 
            _3715 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3715 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3715) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3684 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                if ceil32(_3684) > _3684:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3684 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3684) + 32], 
            _3716 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3716 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3716) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3685 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
            if ceil32(_3685) > _3685:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3685 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3685) + 32], 
        _3717 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3717 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3717) + 32], 
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
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _4410 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4410)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4410 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4410) + 32], 
            _4426 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4426)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
            if ceil32(_4426) > _4426:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4426 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4426) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _4411 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4411 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4411) + 32], 
        _4427 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
        if ceil32(_4427) > _4427:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4427 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4427) + 32], 
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
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _4412 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4412 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4412) + 32], 
        _4428 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
        if ceil32(_4428) > _4428:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4428 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4428) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        _4413 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4413 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4413) + 32], 
    _4429 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
    if ceil32(_4429) > _4429:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4429 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4429) + 32], 
}



}
