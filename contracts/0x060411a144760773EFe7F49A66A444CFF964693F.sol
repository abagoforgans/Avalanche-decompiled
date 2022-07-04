contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize(string arg1, string arg2, address arg3, address arg4)
#  - tokenURI(uint256 arg1)
#
address owner;
uint256 stor101;
array of struct stor201;
array of struct stor202;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor206;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor252;
array of uint256 tokenByIndex;
mapping of uint256 stor254;
address stor351;
uint8 paused;
address stor451;
address sub_5f9c85a5Address;
address sub_6cdb992fAddress;
mapping of struct tokenMetadata;
mapping of address sub_f6a82606;
array of uint256 stor66614858098014121789659473664084883086973595185068194801876917288425524863616;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_5f9c85a5(?) payable {
    return sub_5f9c85a5Address
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function tokenMetadata(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return tokenMetadata[arg1].field_0, tokenMetadata[arg1].field_256, tokenMetadata[arg1].field_512
}

function sub_6cdb992f(?) payable {
    return sub_6cdb992fAddress
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
    return bool(stor206[address(arg1)][address(arg2)])
}

function sub_f6a82606(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f6a82606[arg1]
}

function _fallback() payable {
    revert
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor451)
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor351)
}

function renouncePauser() payable {
    if stor451 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    emit PauserChanged(stor451, 0);
    stor451 = 0
}

function changePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor451 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    require arg1
    emit PauserChanged(stor451, arg1);
    stor451 = arg1
}

function renounceOwnership() payable {
    if stor351 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if stor451 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor351 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if stor451 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor351 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function sub_59ca6c01(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor351 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'ERR_INVALID_LIQUIDITY_PROVIDERS'
    sub_5f9c85a5Address = address(cd[4])
    emit 0x62f6d35f: address(cd[4])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor351 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function sub_e479b099(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor351 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERR_INVALID_WHITELIST_PERIOD_MANAGER'
    sub_6cdb992fAddress = address(cd[4])
    emit 0x39dda4be: address(cd[4])
}

function sub_a1e5ab58(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    if stor351 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[36]):
        revert with 0, 'ERR_INVALID_SVG_HELPER'
    if not address(cd[4]):
        revert with 0, 'ERR_INVALID_TOKEN_ADDRESS'
    sub_f6a82606[address(cd[4])] = address(cd[36])
    emit 0xd96fe492: address(cd[4]), address(cd[36])
}

function sub_4810f4ae(?) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 96
    if stor351 != msg.sender:
        if sub_5f9c85a5Address != msg.sender:
            revert with 0, 'ERR_UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != sub_5f9c85a5Address:
            revert with 0, 'ERR_UNAUTHORIZED'
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[cd[4]]:
        revert with 0, 'ERR__TOKEN_DOES_NOT_EXIST'
    require cd[36] == address(cd[36])
    tokenMetadata[cd[4]].field_0 = address(cd[36])
    tokenMetadata[cd[4]].field_256 = cd[68]
    tokenMetadata[cd[4]].field_512 = cd[100]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor351 != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
    else:
        if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERC721: approve to caller'
    if stor351 != msg.sender:
        stor206[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        stor206[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
}

function sub_cce62240(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = balanceOf[address(arg1)]
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < mem[96]:
        if not address(arg1):
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 251)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 128] = 32
    mem[(32 * balanceOf[address(arg1)]) + 160] = mem[96]
    mem[(32 * balanceOf[address(arg1)]) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * balanceOf[address(arg1)]) + 160 len (32 * mem[96]) + 32]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if stor351 != msg.sender:
        if ownerOf[arg2] != msg.sender:
            if stor351 != msg.sender:
                if not stor206[stor203[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor206[stor203[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg2]:
            if stor351 != msg.sender:
                if not stor206[stor203[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor206[stor203[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor351 != msg.sender:
        if sub_5f9c85a5Address != msg.sender:
            revert with 0, 'ERR_UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != sub_5f9c85a5Address:
            revert with 0, 'ERR_UNAUTHORIZED'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if 1 > !tokenByIndex.length:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor253.length + 1]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    stor254[stor253.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    stor9346[stor253.length] = tokenByIndex.length + 1
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)]] = tokenByIndex.length + 1
            stor252[stor253.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor254[stor253.length + 1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor254[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor254[stor253[stor253.length]] = stor254[stor253.length + 1]
        stor254[stor253.length + 1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor253.length + 1] = arg1
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        if stor351 != msg.sender:
            call arg1.0x150b7a02 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, tokenByIndex.length + 1, 128, 0
        else:
            call arg1.0x150b7a02 with:
                 gas gas_remaining wei
                args 0, 0, 0, tokenByIndex.length + 1, 128, 0
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
    stor101 = 1
    return (tokenByIndex.length + 1)
}

function name() payable {
    if bool(stor201.length):
        if bool(stor201.length) == stor201.length.field_1 < 32:
            revert with 0, 34
        if bool(stor201.length):
            if bool(stor201.length) == stor201.length.field_1 < 32:
                revert with 0, 34
            if stor201.length.field_1:
                if 31 < stor201.length.field_1:
                    mem[128] = uint256(stor201.field_0)
                    idx = 128
                    s = 0
                    while stor201.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor201[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201.length.field_1), data=mem[128 len ceil32(stor201.length.field_1)])
                mem[128] = 256 * stor201.length.field_8
        else:
            if bool(stor201.length) == stor201.length.field_1 < 32:
                revert with 0, 34
            if stor201.length.field_1:
                if 31 < stor201.length.field_1:
                    mem[128] = uint256(stor201.field_0)
                    idx = 128
                    s = 0
                    while stor201.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor201[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor201.length.field_1), data=mem[128 len ceil32(stor201.length.field_1)])
                mem[128] = 256 * stor201.length.field_8
        mem[ceil32(stor201.length.field_1) + 192 len ceil32(stor201.length.field_1)] = mem[128 len ceil32(stor201.length.field_1)]
        if ceil32(stor201.length.field_1) > stor201.length.field_1:
            mem[stor201.length.field_1 + ceil32(stor201.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor201.length.field_1), data=mem[128 len ceil32(stor201.length.field_1)], mem[(2 * ceil32(stor201.length.field_1)) + 192 len 2 * ceil32(stor201.length.field_1)]), 
    if bool(stor201.length) == stor201.length.field_1 < 32:
        revert with 0, 34
    if bool(stor201.length):
        if bool(stor201.length) == stor201.length.field_1 < 32:
            revert with 0, 34
        if stor201.length.field_1:
            if 31 < stor201.length.field_1:
                mem[128] = uint256(stor201.field_0)
                idx = 128
                s = 0
                while stor201.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor201[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1)])
            mem[128] = 256 * stor201.length.field_8
    else:
        if bool(stor201.length) == stor201.length.field_1 < 32:
            revert with 0, 34
        if stor201.length.field_1:
            if 31 < stor201.length.field_1:
                mem[128] = uint256(stor201.field_0)
                idx = 128
                s = 0
                while stor201.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor201[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1)])
            mem[128] = 256 * stor201.length.field_8
    mem[ceil32(stor201.length.field_1) + 192 len ceil32(stor201.length.field_1)] = mem[128 len ceil32(stor201.length.field_1)]
    if ceil32(stor201.length.field_1) > stor201.length.field_1:
        mem[stor201.length.field_1 + ceil32(stor201.length.field_1) + 192] = 0
    return Array(len=stor201.length % 128, data=mem[128 len ceil32(stor201.length.field_1)], mem[(2 * ceil32(stor201.length.field_1)) + 192 len 2 * ceil32(stor201.length.field_1)]), 
}

function symbol() payable {
    if bool(stor202.length):
        if bool(stor202.length) == stor202.length.field_1 < 32:
            revert with 0, 34
        if bool(stor202.length):
            if bool(stor202.length) == stor202.length.field_1 < 32:
                revert with 0, 34
            if stor202.length.field_1:
                if 31 < stor202.length.field_1:
                    mem[128] = uint256(stor202.field_0)
                    idx = 128
                    s = 0
                    while stor202.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor202[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor202.length.field_1), data=mem[128 len ceil32(stor202.length.field_1)])
                mem[128] = 256 * stor202.length.field_8
        else:
            if bool(stor202.length) == stor202.length.field_1 < 32:
                revert with 0, 34
            if stor202.length.field_1:
                if 31 < stor202.length.field_1:
                    mem[128] = uint256(stor202.field_0)
                    idx = 128
                    s = 0
                    while stor202.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor202[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor202.length.field_1), data=mem[128 len ceil32(stor202.length.field_1)])
                mem[128] = 256 * stor202.length.field_8
        mem[ceil32(stor202.length.field_1) + 192 len ceil32(stor202.length.field_1)] = mem[128 len ceil32(stor202.length.field_1)]
        if ceil32(stor202.length.field_1) > stor202.length.field_1:
            mem[stor202.length.field_1 + ceil32(stor202.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor202.length.field_1), data=mem[128 len ceil32(stor202.length.field_1)], mem[(2 * ceil32(stor202.length.field_1)) + 192 len 2 * ceil32(stor202.length.field_1)]), 
    if bool(stor202.length) == stor202.length.field_1 < 32:
        revert with 0, 34
    if bool(stor202.length):
        if bool(stor202.length) == stor202.length.field_1 < 32:
            revert with 0, 34
        if stor202.length.field_1:
            if 31 < stor202.length.field_1:
                mem[128] = uint256(stor202.field_0)
                idx = 128
                s = 0
                while stor202.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor202[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1)])
            mem[128] = 256 * stor202.length.field_8
    else:
        if bool(stor202.length) == stor202.length.field_1 < 32:
            revert with 0, 34
        if stor202.length.field_1:
            if 31 < stor202.length.field_1:
                mem[128] = uint256(stor202.field_0)
                idx = 128
                s = 0
                while stor202.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor202[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1)])
            mem[128] = 256 * stor202.length.field_8
    mem[ceil32(stor202.length.field_1) + 192 len ceil32(stor202.length.field_1)] = mem[128 len ceil32(stor202.length.field_1)]
    if ceil32(stor202.length.field_1) > stor202.length.field_1:
        mem[stor202.length.field_1 + ceil32(stor202.length.field_1) + 192] = 0
    return Array(len=stor202.length % 128, data=mem[128 len ceil32(stor202.length.field_1)], mem[(2 * ceil32(stor202.length.field_1)) + 192 len 2 * ceil32(stor202.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor351 != msg.sender:
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor206[stor203[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                if not stor206[stor203[arg3]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
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
        stor254[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor9346[stor253.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor252[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor252[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1]
                stor252[stor251[address(arg1)][stor204[address(arg1)] - 1]] = stor252[arg3]
            stor252[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor204[address(arg2)]] = arg3
            stor252[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor254[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor254[arg3]] = tokenByIndex[tokenByIndex.length]
        stor254[stor253[stor253.length]] = stor254[arg3]
        stor254[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if arg1:
        if arg2:
            require ext_code.size(sub_6cdb992fAddress)
            call sub_6cdb992fAddress.0x4ca2fe6 with:
                 gas gas_remaining wei
                args 0, 0, address(arg2), tokenMetadata[arg3].field_0, tokenMetadata[arg3].field_256
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor351 != msg.sender:
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor206[stor203[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                if not stor206[stor203[arg3]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
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
        stor254[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor9346[stor253.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor252[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor252[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1]
                stor252[stor251[address(arg1)][stor204[address(arg1)] - 1]] = stor252[arg3]
            stor252[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor204[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor204[address(arg2)]] = arg3
            stor252[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor254[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor254[arg3]] = tokenByIndex[tokenByIndex.length]
        stor254[stor253[stor253.length]] = stor254[arg3]
        stor254[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if arg1:
        if arg2:
            require ext_code.size(sub_6cdb992fAddress)
            call sub_6cdb992fAddress.0x4ca2fe6 with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), tokenMetadata[arg3].field_0, tokenMetadata[arg3].field_256
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    if stor351 != msg.sender:
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
    else:
        call arg2 with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
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
