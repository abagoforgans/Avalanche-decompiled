contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_959d1620(?) = 25

const sub_964615b0(?) = 50

const MAX_SUPPLY = 1500

const MINT_PRICE = 200 * 10^18


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
mapping of struct stor10;
uint8 stor11;
address owner; offset 8
uint256 stor12;
address stor13;
address stor14;
uint256 _score;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint256 sub_56137387;

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

function sub_56137387(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_56137387[arg1]
}

function paused() payable {
    return bool(stor11)
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

function sub_867ca782(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function sub_878f923c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor17[arg1])
}

function owner() payable {
    return owner
}

function sub_8eaf1ff2(?) payable {
    return _score
}

function _score() payable {
    return _score
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11:
        revert with 0, 'Pausable: paused'
    stor11 = 1
    emit Paused(msg.sender);
}

function sub_c10e9972(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor16[address(arg1)]:
        return 50
    if not stor17[address(arg1)]:
        return 1500
    return 25
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11:
        revert with 0, 'Pausable: not paused'
    stor11 = 0
    emit Unpaused(msg.sender);
}

function getMintingPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[address(arg1)]:
        return 40 * 10^18
    if not stor17[address(arg1)]:
        return 200 * 10^18
    return 80 * 10^18
}

function sub_02fc347b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = uint8(bool(arg2))
}

function sub_98d9e0bd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = uint8(bool(arg2))
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

function sub_500bef84(?) payable {
    if stor14 != msg.sender:
        revert with 0, 'Caller is not the Vault'
    emit 0xc1175222 
    staticcall stor13.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor13.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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

function name() payable {
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

function symbol() payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if stor11:
        revert with 0, 'Pausable: paused'
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

function sub_da863ed6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor16[address(msg.sender)]:
        if uint8(arg1) > 0x760f253edb4ab0d29598f4f1e83619728f13290383a9f3fa:
            revert with 'NH{q', 17
        mem[100] = msg.sender
        staticcall stor13.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < 40 * 10^18 * uint8(arg1):
            revert with 0, 'Your Wallet does not have enough DAI'
        if uint8(arg1) <= 0:
            revert with 0, 'Mint at least 1 scissor'
        mem[0] = msg.sender
        mem[32] = 18
        if uint8(arg1) > -sub_56137387[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        if stor16[address(msg.sender)]:
            if uint8(arg1) + sub_56137387[address(msg.sender)] > 50:
                revert with 0, 'You have reached your limit of tokens'
            if tokenByIndex.length > -uint8(arg1) - 1:
                revert with 'NH{q', 17
            if tokenByIndex.length + uint8(arg1) > 1500:
                revert with 0, 'Purchase would exceed max tokens'
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = this.address
            mem[ceil32(return_data.size) + 164] = 40 * 10^18 * uint8(arg1)
            call stor13.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 40 * 10^18 * uint8(arg1)
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if _score > (-40 * 10^18 * uint8(arg1)) - 1:
                revert with 'NH{q', 17
            _score += 40 * 10^18 * uint8(arg1)
            idx = 0
            while idx < uint8(arg1):
                stor12++
                _866 = mem[64]
                mem[64] = mem[64] + 32
                mem[_866] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                if stor11:
                    revert with 0, 'Pausable: paused'
                stor9[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor12
                if msg.sender:
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                    stor7[stor12] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        _1136 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1136] = 80
                        mem[_1136 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1136 + 32
                            while _1136 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1136 + 32
                            while _1136 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_866 + s + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _2429 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2429] == Mask(32, 224, mem[_2429])
                        if Mask(32, 224, mem[_2429]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2863 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2863] = 80
                        mem[_2863 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _2863 + 32
                            while _2863 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _2863 + 32
                            while _2863 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[stor12] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12]
                stor9[stor12] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor12
                mem[32] = 2
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, stor12);
                if ext_code.size(msg.sender) <= 0:
                    _1190 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1190] = 80
                    mem[_1190 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        t = sha3(sha3(stor12, 10))
                        s = _1190 + 32
                        while _1190 + 112 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        t = sha3(sha3(stor12, 10))
                        s = _1190 + 32
                        while _1190 + 112 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_866 + s + 32]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
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
                _2431 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2431] == Mask(32, 224, mem[_2431])
                if Mask(32, 224, mem[_2431]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _2864 = mem[64]
                mem[64] = mem[64] + 128
                mem[_2864] = 80
                mem[_2864 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                if not ownerOf[stor12]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[32] = 10
                if bool(stor10[stor12].field_0):
                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor12, 10)
                    stor10[stor12].field_0 = 161
                    s = sha3(sha3(stor12, 10))
                    idx = _2864 + 32
                    while _2864 + 112 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(stor12, 10)) + 3
                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                else:
                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(stor12, 10)
                    stor10[stor12].field_0 = 161
                    s = sha3(sha3(stor12, 10))
                    idx = _2864 + 32
                    while _2864 + 112 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = sha3(sha3(stor12, 10)) + 3
                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                s = 1
                continue 
        else:
            if not stor17[address(msg.sender)]:
                if uint8(arg1) + sub_56137387[address(msg.sender)] > 1500:
                    revert with 0, 'You have reached your limit of tokens'
                if tokenByIndex.length > -uint8(arg1) - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + uint8(arg1) > 1500:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[ceil32(return_data.size) + 100] = msg.sender
                mem[ceil32(return_data.size) + 132] = this.address
                mem[ceil32(return_data.size) + 164] = 40 * 10^18 * uint8(arg1)
                call stor13.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 40 * 10^18 * uint8(arg1)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if _score > (-40 * 10^18 * uint8(arg1)) - 1:
                    revert with 'NH{q', 17
                _score += 40 * 10^18 * uint8(arg1)
                idx = 0
                while idx < uint8(arg1):
                    stor12++
                    _864 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_864] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    if stor11:
                        revert with 0, 'Pausable: paused'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                        stor7[stor12] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1134 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1134] = 80
                            mem[_1134 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1134 + 32
                                while _1134 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1134 + 32
                                while _1134 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_864 + s + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _2421 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2421] == Mask(32, 224, mem[_2421])
                            if Mask(32, 224, mem[_2421]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2859 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2859] = 80
                            mem[_2859 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2859 + 32
                                while _2859 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2859 + 32
                                while _2859 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        _1188 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1188] = 80
                        mem[_1188 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1188 + 32
                            while _1188 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1188 + 32
                            while _1188 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_864 + s + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _2423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2423] == Mask(32, 224, mem[_2423])
                    if Mask(32, 224, mem[_2423]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2860 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2860] = 80
                    mem[_2860 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2860 + 32
                        while _2860 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2860 + 32
                        while _2860 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    s = 1
                    continue 
            else:
                if uint8(arg1) + sub_56137387[address(msg.sender)] > 25:
                    revert with 0, 'You have reached your limit of tokens'
                if tokenByIndex.length > -uint8(arg1) - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + uint8(arg1) > 1500:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[ceil32(return_data.size) + 100] = msg.sender
                mem[ceil32(return_data.size) + 132] = this.address
                mem[ceil32(return_data.size) + 164] = 40 * 10^18 * uint8(arg1)
                call stor13.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 40 * 10^18 * uint8(arg1)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if _score > (-40 * 10^18 * uint8(arg1)) - 1:
                    revert with 'NH{q', 17
                _score += 40 * 10^18 * uint8(arg1)
                idx = 0
                while idx < uint8(arg1):
                    stor12++
                    _865 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_865] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    if stor11:
                        revert with 0, 'Pausable: paused'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                        stor7[stor12] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1135 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1135] = 80
                            mem[_1135 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1135 + 32
                                while _1135 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1135 + 32
                                while _1135 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_865 + s + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _2425 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2425] == Mask(32, 224, mem[_2425])
                            if Mask(32, 224, mem[_2425]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2861 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2861] = 80
                            mem[_2861 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2861 + 32
                                while _2861 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2861 + 32
                                while _2861 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        _1189 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1189] = 80
                        mem[_1189 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1189 + 32
                            while _1189 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1189 + 32
                            while _1189 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_865 + s + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _2427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2427] == Mask(32, 224, mem[_2427])
                    if Mask(32, 224, mem[_2427]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2862 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2862] = 80
                    mem[_2862 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2862 + 32
                        while _2862 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2862 + 32
                        while _2862 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    s = 1
                    continue 
    else:
        if not stor17[address(msg.sender)]:
            if uint8(arg1) > 0x179ca10c9242235d511e976394d79eb08303d500b3eeca65:
                revert with 'NH{q', 17
            mem[100] = msg.sender
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 200 * 10^18 * uint8(arg1):
                revert with 0, 'Your Wallet does not have enough DAI'
            if uint8(arg1) <= 0:
                revert with 0, 'Mint at least 1 scissor'
            mem[0] = msg.sender
            mem[32] = 18
            if uint8(arg1) > -sub_56137387[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            if stor16[address(msg.sender)]:
                if uint8(arg1) + sub_56137387[address(msg.sender)] > 50:
                    revert with 0, 'You have reached your limit of tokens'
                if tokenByIndex.length > -uint8(arg1) - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + uint8(arg1) > 1500:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[ceil32(return_data.size) + 100] = msg.sender
                mem[ceil32(return_data.size) + 132] = this.address
                mem[ceil32(return_data.size) + 164] = 200 * 10^18 * uint8(arg1)
                call stor13.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 200 * 10^18 * uint8(arg1)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if _score > (-200 * 10^18 * uint8(arg1)) - 1:
                    revert with 'NH{q', 17
                _score += 200 * 10^18 * uint8(arg1)
                idx = 0
                while idx < uint8(arg1):
                    stor12++
                    _860 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_860] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    if stor11:
                        revert with 0, 'Pausable: paused'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                        stor7[stor12] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1130 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1130] = 80
                            mem[_1130 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1130 + 32
                                while _1130 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1130 + 32
                                while _1130 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_860 + s + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _2405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2405] == Mask(32, 224, mem[_2405])
                            if Mask(32, 224, mem[_2405]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2851 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2851] = 80
                            mem[_2851 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2851 + 32
                                while _2851 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2851 + 32
                                while _2851 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        _1184 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1184] = 80
                        mem[_1184 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1184 + 32
                            while _1184 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1184 + 32
                            while _1184 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_860 + s + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _2407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2407] == Mask(32, 224, mem[_2407])
                    if Mask(32, 224, mem[_2407]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2852 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2852] = 80
                    mem[_2852 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2852 + 32
                        while _2852 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2852 + 32
                        while _2852 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    s = 1
                    continue 
            else:
                if not stor17[address(msg.sender)]:
                    if uint8(arg1) + sub_56137387[address(msg.sender)] > 1500:
                        revert with 0, 'You have reached your limit of tokens'
                    if tokenByIndex.length > -uint8(arg1) - 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length + uint8(arg1) > 1500:
                        revert with 0, 'Purchase would exceed max tokens'
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = 200 * 10^18 * uint8(arg1)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 200 * 10^18 * uint8(arg1)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if _score > (-200 * 10^18 * uint8(arg1)) - 1:
                        revert with 'NH{q', 17
                    _score += 200 * 10^18 * uint8(arg1)
                    idx = 0
                    while idx < uint8(arg1):
                        stor12++
                        _858 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_858] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        if stor11:
                            revert with 0, 'Pausable: paused'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                            stor7[stor12] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if ext_code.size(msg.sender) <= 0:
                                _1128 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_1128] = 80
                                mem[_1128 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1128 + 32
                                    while _1128 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1128 + 32
                                    while _1128 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_858 + s + 32]
                                    s = s + 32
                                    continue 
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _2397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2397] == Mask(32, 224, mem[_2397])
                                if Mask(32, 224, mem[_2397]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _2847 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2847] = 80
                                mem[_2847 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2847 + 32
                                    while _2847 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2847 + 32
                                    while _2847 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1182 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1182] = 80
                            mem[_1182 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1182 + 32
                                while _1182 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1182 + 32
                                while _1182 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_858 + s + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _2399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2399] == Mask(32, 224, mem[_2399])
                        if Mask(32, 224, mem[_2399]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2848 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2848] = 80
                        mem[_2848 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2848 + 32
                            while _2848 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2848 + 32
                            while _2848 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        s = 1
                        continue 
                else:
                    if uint8(arg1) + sub_56137387[address(msg.sender)] > 25:
                        revert with 0, 'You have reached your limit of tokens'
                    if tokenByIndex.length > -uint8(arg1) - 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length + uint8(arg1) > 1500:
                        revert with 0, 'Purchase would exceed max tokens'
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = 200 * 10^18 * uint8(arg1)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 200 * 10^18 * uint8(arg1)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if _score > (-200 * 10^18 * uint8(arg1)) - 1:
                        revert with 'NH{q', 17
                    _score += 200 * 10^18 * uint8(arg1)
                    idx = 0
                    while idx < uint8(arg1):
                        stor12++
                        _859 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_859] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        if stor11:
                            revert with 0, 'Pausable: paused'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                            stor7[stor12] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if ext_code.size(msg.sender) <= 0:
                                _1129 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_1129] = 80
                                mem[_1129 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1129 + 32
                                    while _1129 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1129 + 32
                                    while _1129 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_859 + s + 32]
                                    s = s + 32
                                    continue 
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _2401 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2401] == Mask(32, 224, mem[_2401])
                                if Mask(32, 224, mem[_2401]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _2849 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2849] = 80
                                mem[_2849 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2849 + 32
                                    while _2849 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2849 + 32
                                    while _2849 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1183 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1183] = 80
                            mem[_1183 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1183 + 32
                                while _1183 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1183 + 32
                                while _1183 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_859 + s + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _2403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2403] == Mask(32, 224, mem[_2403])
                        if Mask(32, 224, mem[_2403]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2850 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2850] = 80
                        mem[_2850 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2850 + 32
                            while _2850 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2850 + 32
                            while _2850 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        s = 1
                        continue 
        else:
            if uint8(arg1) > 0x3b07929f6da558694acc7a78f41b0cb947899481c1d4f9fd:
                revert with 'NH{q', 17
            mem[100] = msg.sender
            staticcall stor13.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 80 * 10^18 * uint8(arg1):
                revert with 0, 'Your Wallet does not have enough DAI'
            if uint8(arg1) <= 0:
                revert with 0, 'Mint at least 1 scissor'
            mem[0] = msg.sender
            mem[32] = 18
            if uint8(arg1) > -sub_56137387[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            if stor16[address(msg.sender)]:
                if uint8(arg1) + sub_56137387[address(msg.sender)] > 50:
                    revert with 0, 'You have reached your limit of tokens'
                if tokenByIndex.length > -uint8(arg1) - 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length + uint8(arg1) > 1500:
                    revert with 0, 'Purchase would exceed max tokens'
                mem[ceil32(return_data.size) + 100] = msg.sender
                mem[ceil32(return_data.size) + 132] = this.address
                mem[ceil32(return_data.size) + 164] = 80 * 10^18 * uint8(arg1)
                call stor13.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 80 * 10^18 * uint8(arg1)
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if _score > (-80 * 10^18 * uint8(arg1)) - 1:
                    revert with 'NH{q', 17
                _score += 80 * 10^18 * uint8(arg1)
                idx = 0
                while idx < uint8(arg1):
                    stor12++
                    _863 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_863] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    if stor11:
                        revert with 0, 'Pausable: paused'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                        stor7[stor12] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1133 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1133] = 80
                            mem[_1133 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1133 + 32
                                while _1133 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1133 + 32
                                while _1133 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 164] = mem[_863 + s + 32]
                                s = s + 32
                                continue 
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _2417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2417] == Mask(32, 224, mem[_2417])
                            if Mask(32, 224, mem[_2417]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _2857 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2857] = 80
                            mem[_2857 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2857 + 32
                                while _2857 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _2857 + 32
                                while _2857 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if tokenByIndex.length < 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 'NH{q', 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 'NH{q', 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if ext_code.size(msg.sender) <= 0:
                        _1187 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_1187] = 80
                        mem[_1187 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1187 + 32
                            while _1187 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            t = sha3(sha3(stor12, 10))
                            s = _1187 + 32
                            while _1187 + 112 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 164] = mem[_863 + s + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _2419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2419] == Mask(32, 224, mem[_2419])
                    if Mask(32, 224, mem[_2419]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    _2858 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2858] = 80
                    mem[_2858 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2858 + 32
                        while _2858 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = sha3(stor12, 10)
                        stor10[stor12].field_0 = 161
                        s = sha3(sha3(stor12, 10))
                        idx = _2858 + 32
                        while _2858 + 112 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = sha3(sha3(stor12, 10)) + 3
                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    s = 1
                    continue 
            else:
                if not stor17[address(msg.sender)]:
                    if uint8(arg1) + sub_56137387[address(msg.sender)] > 1500:
                        revert with 0, 'You have reached your limit of tokens'
                    if tokenByIndex.length > -uint8(arg1) - 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length + uint8(arg1) > 1500:
                        revert with 0, 'Purchase would exceed max tokens'
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = 80 * 10^18 * uint8(arg1)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 80 * 10^18 * uint8(arg1)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if _score > (-80 * 10^18 * uint8(arg1)) - 1:
                        revert with 'NH{q', 17
                    _score += 80 * 10^18 * uint8(arg1)
                    idx = 0
                    while idx < uint8(arg1):
                        stor12++
                        _861 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_861] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        if stor11:
                            revert with 0, 'Pausable: paused'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                            stor7[stor12] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if ext_code.size(msg.sender) <= 0:
                                _1131 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_1131] = 80
                                mem[_1131 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1131 + 32
                                    while _1131 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1131 + 32
                                    while _1131 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_861 + s + 32]
                                    s = s + 32
                                    continue 
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _2409 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2409] == Mask(32, 224, mem[_2409])
                                if Mask(32, 224, mem[_2409]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _2853 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2853] = 80
                                mem[_2853 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2853 + 32
                                    while _2853 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2853 + 32
                                    while _2853 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1185 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1185] = 80
                            mem[_1185 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1185 + 32
                                while _1185 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1185 + 32
                                while _1185 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_861 + s + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _2411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2411] == Mask(32, 224, mem[_2411])
                        if Mask(32, 224, mem[_2411]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2854 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2854] = 80
                        mem[_2854 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2854 + 32
                            while _2854 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2854 + 32
                            while _2854 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        s = 1
                        continue 
                else:
                    if uint8(arg1) + sub_56137387[address(msg.sender)] > 25:
                        revert with 0, 'You have reached your limit of tokens'
                    if tokenByIndex.length > -uint8(arg1) - 1:
                        revert with 'NH{q', 17
                    if tokenByIndex.length + uint8(arg1) > 1500:
                        revert with 0, 'Purchase would exceed max tokens'
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = this.address
                    mem[ceil32(return_data.size) + 164] = 80 * 10^18 * uint8(arg1)
                    call stor13.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 80 * 10^18 * uint8(arg1)
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if _score > (-80 * 10^18 * uint8(arg1)) - 1:
                        revert with 'NH{q', 17
                    _score += 80 * 10^18 * uint8(arg1)
                    idx = 0
                    while idx < uint8(arg1):
                        stor12++
                        _862 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_862] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        if stor11:
                            revert with 0, 'Pausable: paused'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                            stor7[stor12] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if ext_code.size(msg.sender) <= 0:
                                _1132 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_1132] = 80
                                mem[_1132 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1132 + 32
                                    while _1132 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _1132 + 32
                                    while _1132 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 164] = mem[_862 + s + 32]
                                    s = s + 32
                                    continue 
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _2413 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2413] == Mask(32, 224, mem[_2413])
                                if Mask(32, 224, mem[_2413]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                _2855 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2855] = 80
                                mem[_2855 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2855 + 32
                                    while _2855 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 'NH{q', 34
                                    mem[0] = sha3(stor12, 10)
                                    stor10[stor12].field_0 = 161
                                    t = sha3(sha3(stor12, 10))
                                    s = _2855 + 32
                                    while _2855 + 112 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + 3
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if ext_code.size(msg.sender) <= 0:
                            _1186 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_1186] = 80
                            mem[_1186 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1186 + 32
                                while _1186 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 'NH{q', 34
                                mem[0] = sha3(stor12, 10)
                                stor10[stor12].field_0 = 161
                                t = sha3(sha3(stor12, 10))
                                s = _1186 + 32
                                while _1186 + 112 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + 3
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 164] = mem[_862 + s + 32]
                            s = s + 32
                            continue 
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _2415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2415] == Mask(32, 224, mem[_2415])
                        if Mask(32, 224, mem[_2415]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _2856 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2856] = 80
                        mem[_2856 + 32 len 80] = 0xfe68747470733a2f2f676174657761792e70696e6174612e636c6f75642f697066732f516d517176513534545772315035636f32447036343876634670576e37744567314138784b486e6b4b3436526b
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_1) < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2856 + 32
                            while _2856 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (uint255(stor10[stor12].field_1) + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = sha3(stor12, 10)
                            stor10[stor12].field_0 = 161
                            s = sha3(sha3(stor12, 10))
                            idx = _2856 + 32
                            while _2856 + 112 > idx:
                                stor[s] = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = sha3(sha3(stor12, 10)) + 3
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                        s = 1
                        continue 
    if sub_56137387[address(msg.sender)] > -uint8(arg1) - 1:
        revert with 'NH{q', 17
    sub_56137387[address(msg.sender)] += uint8(arg1)
}



}
