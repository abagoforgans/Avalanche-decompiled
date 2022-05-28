contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const TRANSFER_ROLE = 0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
uint8 stor12;
uint8 sub_8423df79; offset 160
uint128 stor15; offset 160
address stor15;
address stor16;
address stor17;
uint256 nextTokenId;
array of struct stor19;
mapping of struct stor20;
mapping of struct creator;
uint256 royaltyBps;
mapping of uint8 stor56303404950152965302615529049884071363929349766701979926234883952044568548396;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function creator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(creator[arg1].field_0)
}

function paused() payable {
    return bool(stor12)
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

function nextTokenId() payable {
    return nextTokenId
}

function sub_8423df79(?) payable {
    return bool(sub_8423df79)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function royaltyBps() payable {
    return royaltyBps
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function owner() payable {
    if uint8(roleAdmin[0][stor16].field_0):
        return stor16
    else:
        return 0
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    revert with 0, 'NFT721: Call mintNFT instead.'
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (address(stor15.field_0) == arg1)
}

function sub_8ba448c2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    Mask(96, 0, stor15.field_160) = Mask(96, 0, bool(cd[4]))
    emit 0xfb4ba02c: bool(cd[4])
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    if not uint8(roleAdmin[0][address(arg1)].field_0):
        revert with 0, 'new owner not module admin.'
    stor16 = arg1
    emit NewOwner(stor16, arg1);
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor17)
    staticcall stor17.getRoyaltyTreasury(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 and royaltyBps > -1 / arg2:
        revert with 0, 17
    return ext_call.return_data[12 len 20], arg2 * royaltyBps / 10000
}

function setRoyaltyBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: Bps provided must be less than 10,000'
    royaltyBps = arg1
    emit 0x244ea8d7: arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(stor15.field_0) != msg.sender:
        if msg.sender == arg1:
            revert with 0, 'ERC721: approve to caller'
        stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 == arg1:
            revert with 0, 'ERC721: approve to caller'
        stor7[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
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
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function pause() payable {
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    else:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if stor12:
        revert with 0, 'Pausable: paused'
    stor12 = 1
    if address(stor15.field_0) != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    else:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not stor12:
        revert with 0, 'Pausable: not paused'
    stor12 = 0
    if address(stor15.field_0) != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor15.field_0) != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if address(stor15.field_0) != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(stor15.field_0) != msg.sender:
        if ownerOf[arg2] != msg.sender:
            if address(stor15.field_0) != msg.sender:
                if not stor7[stor4[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor7[stor4[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg2]:
            if address(stor15.field_0) != msg.sender:
                if not stor7[stor4[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor7[stor4[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor19.length = 0
            idx = 0
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor19.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor19[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 % 128 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor19.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor19[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor19.length.field_1 % 128 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[stor2.length.field_1 % 128 + ceil32(stor2.length.field_1 % 128) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function contractURI() payable {
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        else:
            if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor19.length.field_1 % 128:
                if 31 < stor19.length.field_1 % 128:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[(uint255(stor19.length) * 0.5) + ceil32(uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    else:
        if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor19.length.field_1 % 128:
            if 31 < stor19.length.field_1 % 128:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    mem[ceil32(stor19.length.field_1 % 128) + 192 len ceil32(stor19.length.field_1 % 128)] = mem[128 len ceil32(stor19.length.field_1 % 128)]
    if ceil32(stor19.length.field_1 % 128) > stor19.length.field_1 % 128:
        mem[stor19.length.field_1 % 128 + ceil32(stor19.length.field_1 % 128) + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)], mem[(2 * ceil32(stor19.length.field_1 % 128)) + 192 len 2 * ceil32(stor19.length.field_1 % 128)]), 
}

function _contractURI() payable {
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        else:
            if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor19.length.field_1 % 128:
                if 31 < stor19.length.field_1 % 128:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[(uint255(stor19.length) * 0.5) + ceil32(uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    else:
        if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor19.length.field_1 % 128:
            if 31 < stor19.length.field_1 % 128:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    mem[ceil32(stor19.length.field_1 % 128) + 192 len ceil32(stor19.length.field_1 % 128)] = mem[128 len ceil32(stor19.length.field_1 % 128)]
    if ceil32(stor19.length.field_1 % 128) > stor19.length.field_1 % 128:
        mem[stor19.length.field_1 % 128 + ceil32(stor19.length.field_1 % 128) + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)], mem[(2 * ceil32(stor19.length.field_1 % 128)) + 192 len 2 * ceil32(stor19.length.field_1 % 128)]), 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[arg1].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    else:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[arg1].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    else:
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        if address(stor15.field_0) != msg.sender:
            emit RoleGranted(arg1, arg2, msg.sender);
        else:
            emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_efe47687(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20[arg1].field_0):
                if 31 < uint255(stor20[arg1].field_0) * 0.5:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor20[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor20[arg1].field_0) * 0.5) > uint255(stor20[arg1].field_0) * 0.5:
            mem[(uint255(stor20[arg1].field_0) * 0.5) + ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20[arg1].field_0):
            if 31 < uint255(stor20[arg1].field_0) * 0.5:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[stor20[arg1].field_1 % 128 + ceil32(stor20[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor20[arg1].field_0):
            if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor20[arg1].field_0):
                if 31 < uint255(stor20[arg1].field_0) * 0.5:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        else:
            if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor20[arg1].field_1 % 128:
                if 31 < stor20[arg1].field_1 % 128:
                    mem[128] = stor20[arg1].field_0
                    idx = 128
                    s = 0
                    while stor20[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor20[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
        mem[ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor20[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor20[arg1].field_0) * 0.5) > uint255(stor20[arg1].field_0) * 0.5:
            mem[(uint255(stor20[arg1].field_0) * 0.5) + ceil32(uint255(stor20[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor20[arg1].field_0), data=mem[128 len ceil32(uint255(stor20[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor20[arg1].field_0) * 0.5)]), 
    if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor20[arg1].field_0):
        if bool(stor20[arg1].field_0) == uint255(stor20[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor20[arg1].field_0):
            if 31 < uint255(stor20[arg1].field_0) * 0.5:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor20[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    else:
        if bool(stor20[arg1].field_0) == stor20[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor20[arg1].field_1 % 128:
            if 31 < stor20[arg1].field_1 % 128:
                mem[128] = stor20[arg1].field_0
                idx = 128
                s = 0
                while stor20[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor20[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor20[arg1].field_8)
    mem[ceil32(stor20[arg1].field_1 % 128) + 192 len ceil32(stor20[arg1].field_1 % 128)] = mem[128 len ceil32(stor20[arg1].field_1 % 128)]
    if ceil32(stor20[arg1].field_1 % 128) > stor20[arg1].field_1 % 128:
        mem[stor20[arg1].field_1 % 128 + ceil32(stor20[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor20[arg1].field_0 % 128, data=mem[128 len ceil32(stor20[arg1].field_1 % 128)], mem[(2 * ceil32(stor20[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor20[arg1].field_1 % 128)]), 
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[arg1].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    else:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[arg1].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if address(stor15.field_0) != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(stor15.field_0) != msg.sender:
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor7[stor4[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                if not stor7[stor4[arg3]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not stor7C7A[address(arg1)]:
                    if not stor7C7A[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'NFT: Transfers are restricted to TRANSFER_ROLE holders'
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

function mintNFT(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor12:
        revert with 0, 'Pausable: paused'
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    if bool(stor20[stor18].field_0):
        if bool(stor20[stor18].field_0) == uint255(stor20[stor18].field_0) * 0.5 < 32:
            revert with 0, 34
        if not arg2.length:
            stor20[stor18].field_0 = 0
            idx = 0
            while (uint255(stor20[stor18].field_0) * 0.5) + 31 / 32 > idx:
                stor20[stor18][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor20[stor18].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor20[stor18][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor20[stor18].field_0) * 0.5) + 31 / 32 > idx:
                stor20[stor18][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor20[stor18].field_0) == stor20[stor18].field_1 % 128 < 32:
            revert with 0, 34
        if not arg2.length:
            stor20[stor18].field_0 = 0
            idx = 0
            while stor20[stor18].field_1 % 128 + 31 / 32 > idx:
                stor20[stor18][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor20[stor18].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor20[stor18][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor20[stor18].field_1 % 128 + 31 / 32 > idx:
                stor20[stor18][idx].field_0 = 0
                idx = idx + 1
                continue 
    if address(stor15.field_0) != msg.sender:
        address(creator[stor18].field_0) = msg.sender
    else:
        uint64(creator[stor18].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, creator[stor18].field_64) = 0
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor18]:
        revert with 0, 'ERC721: token already minted'
    stor11[stor18] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = nextTokenId
    if arg1:
        if arg1:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)]] = nextTokenId
            stor9[stor18] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[stor18] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[stor18]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[stor18]
        stor11[stor18] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor18] = arg1
    emit Transfer(0, arg1, nextTokenId);
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
    if address(stor15.field_0) != msg.sender:
        emit Minted(nextTokenId, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
    else:
        emit Minted(nextTokenId, Array(len=arg2.length, data=arg2[all]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(stor15.field_0) != msg.sender:
        if ownerOf[arg3] != msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != msg.sender:
                if not stor7[stor4[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg3]:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[arg3] != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                if not stor7[stor4[arg3]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor11[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor9[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor9[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1]
                stor9[stor8[address(arg1)][stor5[address(arg1)] - 1]] = stor9[arg3]
            stor9[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor5[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor5[address(arg2)]] = arg3
            stor9[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor11[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor11[arg3]] = tokenByIndex[tokenByIndex.length]
        stor11[stor10[stor10.length]] = stor11[arg3]
        stor11[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if stor12:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not stor7C7A[address(arg1)]:
                    if not stor7C7A[address(arg2)]:
                        revert with 0, 'NFT: Transfers are restricted to TRANSFER_ROLE holders'
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
        if address(stor15.field_0) != msg.sender:
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        else:
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(arg1), arg3, 128, arg4.length, arg4[all], 0
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

function sub_49a33a2f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor12:
        revert with 0, 'Pausable: paused'
    if address(stor15.field_0) != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    if address(stor15.field_0) != msg.sender:
        idx = 0
        s = nextTokenId
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[(32 * idx) + 128] = s
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            if bool(stor20[s].field_0):
                if bool(stor20[s].field_0) == uint255(stor20[s].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    stor20[s].field_0 = 0
                    t = sha3(sha3(s, 20))
                    while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    stor20[s].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                    t = sha3(sha3(s, 20))
                    u = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                    while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > u:
                        stor[t] = cd[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
            else:
                if bool(stor20[s].field_0) == stor20[s].field_1 % 128 < 32:
                    revert with 0, 34
                if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    stor20[s].field_0 = 0
                    t = sha3(sha3(s, 20))
                    while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    stor20[s].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                    t = sha3(sha3(s, 20))
                    u = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                    while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > u:
                        stor[t] = cd[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
            address(creator[s].field_0) = msg.sender
            if not address(cd[4]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            stor11[s] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = s
            if address(cd[4]):
                if address(cd[4]):
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[4])][stor5[address(cd[4])]] = s
                    stor9[s] = balanceOf[address(cd[4])]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor11[s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor11[s]] = tokenByIndex[tokenByIndex.length]
                stor11[stor10[stor10.length]] = stor11[s]
                stor11[s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if stor12:
                revert with 0, 'ERC721Pausable: token transfer while paused'
            if balanceOf[address(cd[4])] > -2:
                revert with 0, 17
            balanceOf[address(cd[4])]++
            mem[0] = s
            mem[32] = 4
            ownerOf[s] = address(cd[4])
            emit Transfer(0, address(cd[4]), s);
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        nextTokenId = s
        mem[(32 * ('cd', 36).length) + 128] = 64
        mem[(32 * ('cd', 36).length) + 192] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 160] = (32 * ('cd', 36).length) + 96
        mem[(64 * ('cd', 36).length) + 224] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (64 * ('cd', 36).length) + (32 * ('cd', 36).length) + 256
        u = (64 * ('cd', 36).length) + 256
        while idx < ('cd', 36).length:
            mem[u] = t + (-2 * 32 * ('cd', 36).length) - 256
            require cd[s] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[s] + 36)] <= test266151307()
            require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[s] + 36)]
            mem[t] = cd[(cd[36] + cd[s] + 36)]
            mem[t + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
            mem[cd[(cd[36] + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        emit 0x2a7af4d3: mem[(32 * ('cd', 36).length) + 128 len (64 * ('cd', 36).length) + (32 * ('cd', 36).length) + 128], msg.sender, address(cd[4])
    else:
        idx = 0
        s = nextTokenId
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            mem[(32 * idx) + 128] = s
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            if bool(stor20[s].field_0):
                if bool(stor20[s].field_0) == uint255(stor20[s].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    stor20[s].field_0 = 0
                    t = sha3(sha3(s, 20))
                    while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    stor20[s].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                    t = sha3(sha3(s, 20))
                    u = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                    while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > u:
                        stor[t] = cd[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3(sha3(s, 20)) + ((uint255(stor20[s].field_0) * 0.5) + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
            else:
                if bool(stor20[s].field_0) == stor20[s].field_1 % 128 < 32:
                    revert with 0, 34
                if not cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    stor20[s].field_0 = 0
                    t = sha3(sha3(s, 20))
                    while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > t:
                        stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    stor20[s].field_0 = (2 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 1
                    t = sha3(sha3(s, 20))
                    u = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
                    while cd[36] + cd[(cd[36] + (32 * idx) + 36)] + cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] + 68 > u:
                        stor[t] = cd[u]
                        t = t + 1
                        u = u + 32
                        continue 
                    u = t
                    while sha3(sha3(s, 20)) + (stor20[s].field_1 % 128 + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
            uint64(creator[s].field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            Mask(96, 0, creator[s].field_64) = 0
            if not address(cd[4]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[s]:
                revert with 0, 'ERC721: token already minted'
            stor11[s] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = s
            if address(cd[4]):
                if address(cd[4]):
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[4])][stor5[address(cd[4])]] = s
                    stor9[s] = balanceOf[address(cd[4])]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor11[s] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor11[s]] = tokenByIndex[tokenByIndex.length]
                stor11[stor10[stor10.length]] = stor11[s]
                stor11[s] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if stor12:
                revert with 0, 'ERC721Pausable: token transfer while paused'
            if balanceOf[address(cd[4])] > -2:
                revert with 0, 17
            balanceOf[address(cd[4])]++
            mem[0] = s
            mem[32] = 4
            ownerOf[s] = address(cd[4])
            emit Transfer(0, address(cd[4]), s);
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        nextTokenId = s
        mem[(32 * ('cd', 36).length) + 128] = 64
        mem[(32 * ('cd', 36).length) + 192] = ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 160] = (32 * ('cd', 36).length) + 96
        mem[(64 * ('cd', 36).length) + 224] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = (64 * ('cd', 36).length) + (32 * ('cd', 36).length) + 256
        u = (64 * ('cd', 36).length) + 256
        while idx < ('cd', 36).length:
            mem[u] = t + (-2 * 32 * ('cd', 36).length) - 256
            require cd[s] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[s] + 36)] <= test266151307()
            require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[s] + 36)]
            mem[t] = cd[(cd[36] + cd[s] + 36)]
            mem[t + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
            mem[cd[(cd[36] + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        emit 0x2a7af4d3: mem[(32 * ('cd', 36).length) + 128 len (64 * ('cd', 36).length) + (32 * ('cd', 36).length) + 128], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4])
}

function multicall(bytes[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_107] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_107 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_107 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _108 = mem[64]
            mem[64] = mem[64] + 96
            mem[_108] = 39
            mem[_108 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if not ext_code.size(this.address):
                revert with 0, 'Address: delegate call to non-contract'
            _113 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[s + _113] = mem[s + _107 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _113 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _218 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _229 = mem[_108]
                    mem[mem[64] + 36] = mem[_108]
                    s = 0
                    while s < _229:
                        mem[s + _218 + 68] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_229) > _229:
                        mem[_229 + _218 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_229) + _218 + -mem[64] + 68
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_207] = return_data.size
                mem[_207 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _207
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _230 = mem[_108]
                mem[mem[64] + 36] = mem[_108]
                s = 0
                while s < _230:
                    mem[s + _220 + 68] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_230) > _230:
                    mem[_230 + _220 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_230) + _220 + -mem[64] + 68
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _113] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _113 + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _222 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _231 = mem[_108]
                mem[mem[64] + 36] = mem[_108]
                s = 0
                while s < _231:
                    mem[s + _222 + 68] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_231) > _231:
                    mem[_231 + _222 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_231) + _222 + -mem[64] + 68
            _208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_208] = return_data.size
            mem[_208 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _208
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _232 = mem[_108]
            mem[mem[64] + 36] = mem[_108]
            s = 0
            while s < _232:
                mem[s + _224 + 68] = mem[s + _108 + 32]
                s = s + 32
                continue 
            if ceil32(_232) > _232:
                mem[_232 + _224 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_232) + _224 + -mem[64] + 68
        _100 = mem[64]
        mem[mem[64]] = 32
        _101 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _101:
            mem[t] = u + -_100 - 64
            _198 = mem[s]
            _201 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _201:
                mem[v + u + 32] = mem[v + _198 + 32]
                v = v + 32
                continue 
            if ceil32(_201) > _201:
                mem[_201 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_201) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
            require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) + 32
            mem[_212] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
            mem[_212 + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
            mem[_212 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + 32] = 0
            _217 = mem[64]
            mem[64] = mem[64] + 96
            mem[_217] = 39
            mem[_217 + 32 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
            if not ext_code.size(this.address):
                revert with 0, 'Address: delegate call to non-contract'
            _227 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[s + _227] = mem[s + _212 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _227 + -mem[64] - 4]
                if not return_data.size:
                    if delegate.return_code:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 96
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _314 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _322 = mem[_217]
                    mem[mem[64] + 36] = mem[_217]
                    s = 0
                    while s < _322:
                        mem[s + _314 + 68] = mem[s + _217 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_322) > _322:
                        mem[_322 + _314 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_322) + _314 + -mem[64] + 68
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_308] = return_data.size
                mem[_308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _308
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _316 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _323 = mem[_217]
                mem[mem[64] + 36] = mem[_217]
                s = 0
                while s < _323:
                    mem[s + _316 + 68] = mem[s + _217 + 32]
                    s = s + 32
                    continue 
                if ceil32(_323) > _323:
                    mem[_323 + _316 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_323) + _316 + -mem[64] + 68
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _227] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _227 + -mem[64] - 4]
            if not return_data.size:
                if delegate.return_code:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _324 = mem[_217]
                mem[mem[64] + 36] = mem[_217]
                s = 0
                while s < _324:
                    mem[s + _318 + 68] = mem[s + _217 + 32]
                    s = s + 32
                    continue 
                if ceil32(_324) > _324:
                    mem[_324 + _318 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_324) + _318 + -mem[64] + 68
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_309] = return_data.size
            mem[_309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if delegate.return_code:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _309
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _320 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _325 = mem[_217]
            mem[mem[64] + 36] = mem[_217]
            s = 0
            while s < _325:
                mem[s + _320 + 68] = mem[s + _217 + 32]
                s = s + 32
                continue 
            if ceil32(_325) > _325:
                mem[_325 + _320 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_325) + _320 + -mem[64] + 68
        _202 = mem[64]
        mem[mem[64]] = 32
        _203 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _203:
            mem[t] = u + -_202 - 64
            _293 = mem[s]
            _296 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _296:
                mem[v + u + 32] = mem[v + _293 + 32]
                v = v + 32
                continue 
            if ceil32(_296) > _296:
                mem[_296 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_296) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor15.field_0) != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        else:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                if msg.sender == ownerOf[arg1]:
                    if not ownerOf[arg1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    else:
                        if not ownerOf[arg1]:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            else:
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 0, 50
                                else:
                                    if stor11[arg1] >= tokenByIndex.length:
                                        revert with 0, 50
                                    else:
                                        tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                        stor11[stor10[stor10.length]] = stor11[arg1]
                                        stor11[arg1] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        else:
                                            tokenByIndex[tokenByIndex.length] = 0
                                            tokenByIndex.length--
                                            if stor12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                            else:
                                                if not sub_8423df79:
                                                    approved[arg1] = 0
                                                    if not ownerOf[arg1]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                        if balanceOf[stor4[arg1]] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[stor4[arg1]]--
                                                            ownerOf[arg1] = 0
                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                else:
                                                    if not ownerOf[arg1]:
                                                        approved[arg1] = 0
                                                        if not ownerOf[arg1]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                            if balanceOf[stor4[arg1]] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[stor4[arg1]]--
                                                                ownerOf[arg1] = 0
                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                    else:
                                                        approved[arg1] = 0
                                                        if not ownerOf[arg1]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                            if balanceOf[stor4[arg1]] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[stor4[arg1]]--
                                                                ownerOf[arg1] = 0
                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                        else:
                            if not ownerOf[arg1]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                            else:
                                if balanceOf[stor4[arg1]] < 1:
                                    revert with 0, 17
                                else:
                                    if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                        stor9[arg1] = 0
                                        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                    else:
                                        tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                        stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                        stor9[arg1] = 0
                                        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                else:
                    if not ownerOf[arg1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
                    else:
                        if approved[arg1] == msg.sender:
                            if not ownerOf[arg1]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                            else:
                                if not ownerOf[arg1]:
                                    if tokenByIndex.length < 1:
                                        revert with 0, 17
                                    else:
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        else:
                                            if stor11[arg1] >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                stor11[arg1] = 0
                                                if not tokenByIndex.length:
                                                    revert with 0, 49
                                                else:
                                                    tokenByIndex[tokenByIndex.length] = 0
                                                    tokenByIndex.length--
                                                    if stor12:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                    else:
                                                        if not sub_8423df79:
                                                            approved[arg1] = 0
                                                            if not ownerOf[arg1]:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                if balanceOf[stor4[arg1]] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[stor4[arg1]]--
                                                                    ownerOf[arg1] = 0
                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                        else:
                                                            if not ownerOf[arg1]:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                else:
                                    if not ownerOf[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                    else:
                                        if balanceOf[stor4[arg1]] < 1:
                                            revert with 0, 17
                                        else:
                                            if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                                stor9[arg1] = 0
                                                tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg1] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg1]
                                                            stor11[arg1] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                if stor12:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                else:
                                                                    if not sub_8423df79:
                                                                        approved[arg1] = 0
                                                                        if not ownerOf[arg1]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                                            if balanceOf[stor4[arg1]] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[stor4[arg1]]--
                                                                                ownerOf[arg1] = 0
                                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                                    else:
                                                                        if not ownerOf[arg1]:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                            else:
                                                tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                                stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                                stor9[arg1] = 0
                                                tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg1] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg1]
                                                            stor11[arg1] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                if stor12:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                else:
                                                                    if not sub_8423df79:
                                                                        approved[arg1] = 0
                                                                        if not ownerOf[arg1]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                                            if balanceOf[stor4[arg1]] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[stor4[arg1]]--
                                                                                ownerOf[arg1] = 0
                                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                                    else:
                                                                        if not ownerOf[arg1]:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                        else:
                            if not stor7[stor4[arg1]][address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
                            else:
                                if not ownerOf[arg1]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                else:
                                    if not ownerOf[arg1]:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                    else:
                                        if not ownerOf[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                        else:
                                            if balanceOf[stor4[arg1]] < 1:
                                                revert with 0, 17
                                            else:
                                                if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                                    stor9[arg1] = 0
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg1] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                                stor11[arg1] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    if stor12:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                    else:
                                                                        if not sub_8423df79:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            if not ownerOf[arg1]:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                                            else:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                else:
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                                    stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                                    stor9[arg1] = 0
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg1] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                                stor11[arg1] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    if stor12:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                    else:
                                                                        if not sub_8423df79:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            if not ownerOf[arg1]:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                                            else:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
    else:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
        else:
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 == ownerOf[arg1]:
                    if not ownerOf[arg1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    else:
                        if not ownerOf[arg1]:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            else:
                                if tokenByIndex.length - 1 >= tokenByIndex.length:
                                    revert with 0, 50
                                else:
                                    if stor11[arg1] >= tokenByIndex.length:
                                        revert with 0, 50
                                    else:
                                        tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                        stor11[stor10[stor10.length]] = stor11[arg1]
                                        stor11[arg1] = 0
                                        if not tokenByIndex.length:
                                            revert with 0, 49
                                        else:
                                            tokenByIndex[tokenByIndex.length] = 0
                                            tokenByIndex.length--
                                            if stor12:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                            else:
                                                if not sub_8423df79:
                                                    approved[arg1] = 0
                                                    if not ownerOf[arg1]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                    else:
                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                        if balanceOf[stor4[arg1]] < 1:
                                                            revert with 0, 17
                                                        else:
                                                            balanceOf[stor4[arg1]]--
                                                            ownerOf[arg1] = 0
                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                else:
                                                    if not ownerOf[arg1]:
                                                        approved[arg1] = 0
                                                        if not ownerOf[arg1]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                            if balanceOf[stor4[arg1]] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[stor4[arg1]]--
                                                                ownerOf[arg1] = 0
                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                    else:
                                                        approved[arg1] = 0
                                                        if not ownerOf[arg1]:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                        else:
                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                            if balanceOf[stor4[arg1]] < 1:
                                                                revert with 0, 17
                                                            else:
                                                                balanceOf[stor4[arg1]]--
                                                                ownerOf[arg1] = 0
                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                        else:
                            if not ownerOf[arg1]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                            else:
                                if balanceOf[stor4[arg1]] < 1:
                                    revert with 0, 17
                                else:
                                    if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                        stor9[arg1] = 0
                                        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                    else:
                                        tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                        stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                        stor9[arg1] = 0
                                        tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                else:
                    if not ownerOf[arg1]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
                    else:
                        if approved[arg1] == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                            if not ownerOf[arg1]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                            else:
                                if not ownerOf[arg1]:
                                    if tokenByIndex.length < 1:
                                        revert with 0, 17
                                    else:
                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                            revert with 0, 50
                                        else:
                                            if stor11[arg1] >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                stor11[arg1] = 0
                                                if not tokenByIndex.length:
                                                    revert with 0, 49
                                                else:
                                                    tokenByIndex[tokenByIndex.length] = 0
                                                    tokenByIndex.length--
                                                    if stor12:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                    else:
                                                        if not sub_8423df79:
                                                            approved[arg1] = 0
                                                            if not ownerOf[arg1]:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                            else:
                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                if balanceOf[stor4[arg1]] < 1:
                                                                    revert with 0, 17
                                                                else:
                                                                    balanceOf[stor4[arg1]]--
                                                                    ownerOf[arg1] = 0
                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                        else:
                                                            if not ownerOf[arg1]:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                else:
                                    if not ownerOf[arg1]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                    else:
                                        if balanceOf[stor4[arg1]] < 1:
                                            revert with 0, 17
                                        else:
                                            if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                                stor9[arg1] = 0
                                                tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg1] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg1]
                                                            stor11[arg1] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                if stor12:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                else:
                                                                    if not sub_8423df79:
                                                                        approved[arg1] = 0
                                                                        if not ownerOf[arg1]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                                            if balanceOf[stor4[arg1]] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[stor4[arg1]]--
                                                                                ownerOf[arg1] = 0
                                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                                    else:
                                                                        if not ownerOf[arg1]:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                            else:
                                                tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                                stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                                stor9[arg1] = 0
                                                tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                if tokenByIndex.length < 1:
                                                    revert with 0, 17
                                                else:
                                                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                        revert with 0, 50
                                                    else:
                                                        if stor11[arg1] >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                            stor11[stor10[stor10.length]] = stor11[arg1]
                                                            stor11[arg1] = 0
                                                            if not tokenByIndex.length:
                                                                revert with 0, 49
                                                            else:
                                                                tokenByIndex[tokenByIndex.length] = 0
                                                                tokenByIndex.length--
                                                                if stor12:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                else:
                                                                    if not sub_8423df79:
                                                                        approved[arg1] = 0
                                                                        if not ownerOf[arg1]:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                        else:
                                                                            emit Approval(ownerOf[arg1], 0, arg1);
                                                                            if balanceOf[stor4[arg1]] < 1:
                                                                                revert with 0, 17
                                                                            else:
                                                                                balanceOf[stor4[arg1]]--
                                                                                ownerOf[arg1] = 0
                                                                                emit Transfer(ownerOf[arg1], 0, arg1);
                                                                    else:
                                                                        if not ownerOf[arg1]:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                        else:
                            if not stor7[stor4[arg1]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
                            else:
                                if not ownerOf[arg1]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                else:
                                    if not ownerOf[arg1]:
                                        if tokenByIndex.length < 1:
                                            revert with 0, 17
                                        else:
                                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                revert with 0, 50
                                            else:
                                                if stor11[arg1] >= tokenByIndex.length:
                                                    revert with 0, 50
                                                else:
                                                    tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                    stor11[stor10[stor10.length]] = stor11[arg1]
                                                    stor11[arg1] = 0
                                                    if not tokenByIndex.length:
                                                        revert with 0, 49
                                                    else:
                                                        tokenByIndex[tokenByIndex.length] = 0
                                                        tokenByIndex.length--
                                                        if stor12:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                        else:
                                                            if not sub_8423df79:
                                                                approved[arg1] = 0
                                                                if not ownerOf[arg1]:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                else:
                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                        revert with 0, 17
                                                                    else:
                                                                        balanceOf[stor4[arg1]]--
                                                                        ownerOf[arg1] = 0
                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                            else:
                                                                if not ownerOf[arg1]:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                                                else:
                                                                    approved[arg1] = 0
                                                                    if not ownerOf[arg1]:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                    else:
                                                                        emit Approval(ownerOf[arg1], 0, arg1);
                                                                        if balanceOf[stor4[arg1]] < 1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            balanceOf[stor4[arg1]]--
                                                                            ownerOf[arg1] = 0
                                                                            emit Transfer(ownerOf[arg1], 0, arg1);
                                    else:
                                        if not ownerOf[arg1]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
                                        else:
                                            if balanceOf[stor4[arg1]] < 1:
                                                revert with 0, 17
                                            else:
                                                if balanceOf[stor4[arg1]] - 1 == stor9[arg1]:
                                                    stor9[arg1] = 0
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg1] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                                stor11[arg1] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    if stor12:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                    else:
                                                                        if not sub_8423df79:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            if not ownerOf[arg1]:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                                            else:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                else:
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor9[arg1]] = tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1]
                                                    stor9[stor8[stor4[arg1]][stor5[stor4[arg1]] - 1]] = stor9[arg1]
                                                    stor9[arg1] = 0
                                                    tokenOfOwnerByIndex[stor4[arg1]][stor5[stor4[arg1]] - 1] = 0
                                                    if tokenByIndex.length < 1:
                                                        revert with 0, 17
                                                    else:
                                                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                                                            revert with 0, 50
                                                        else:
                                                            if stor11[arg1] >= tokenByIndex.length:
                                                                revert with 0, 50
                                                            else:
                                                                tokenByIndex[stor11[arg1]] = tokenByIndex[tokenByIndex.length]
                                                                stor11[stor10[stor10.length]] = stor11[arg1]
                                                                stor11[arg1] = 0
                                                                if not tokenByIndex.length:
                                                                    revert with 0, 49
                                                                else:
                                                                    tokenByIndex[tokenByIndex.length] = 0
                                                                    tokenByIndex.length--
                                                                    if stor12:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
                                                                    else:
                                                                        if not sub_8423df79:
                                                                            approved[arg1] = 0
                                                                            if not ownerOf[arg1]:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                            else:
                                                                                emit Approval(ownerOf[arg1], 0, arg1);
                                                                                if balanceOf[stor4[arg1]] < 1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    balanceOf[stor4[arg1]]--
                                                                                    ownerOf[arg1] = 0
                                                                                    emit Transfer(ownerOf[arg1], 0, arg1);
                                                                        else:
                                                                            if not ownerOf[arg1]:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
                                                                            else:
                                                                                approved[arg1] = 0
                                                                                if not ownerOf[arg1]:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                                                                                else:
                                                                                    emit Approval(ownerOf[arg1], 0, arg1);
                                                                                    if balanceOf[stor4[arg1]] < 1:
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        balanceOf[stor4[arg1]]--
                                                                                        ownerOf[arg1] = 0
                                                                                        emit Transfer(ownerOf[arg1], 0, arg1);
}



}
