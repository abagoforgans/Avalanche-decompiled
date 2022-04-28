contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1, bytes32[] arg2)
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
uint8 paused;
address stor15;
uint8 sub_8423df79;
address stor17; offset 8
uint256 maxTotalSupply;
uint256 nextTokenId;
uint256 sub_e88fbd41;
array of struct sub_fd598550;
mapping of uint256 sub_1edab081;
array of struct stor23;
array of struct stor24;
mapping of struct stor25;
uint256 royaltyBps;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1edab081(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_1edab081[arg1][arg2]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function maxTotalSupply() {
    return maxTotalSupply
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(paused)
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

function nextTokenId() {
    return nextTokenId
}

function sub_8423df79(?) {
    return bool(sub_8423df79)
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(roleMember[arg1].field_0):
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function royaltyBps() {
    return royaltyBps
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleMember[arg1].field_0)
}

function sub_e88fbd41(?) {
    return sub_e88fbd41
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function sub_fd598550(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_fd598550.length
    return uint256(sub_fd598550[arg1].field_0), 
           uint256(sub_fd598550[arg1].field_256),
           uint256(sub_fd598550[arg1].field_512),
           uint256(sub_fd598550[arg1].field_768),
           uint256(sub_fd598550[arg1].field_1024),
           uint256(sub_fd598550[arg1].field_1280),
           address(sub_fd598550[arg1].field_1536),
           uint256(sub_fd598550[arg1].field_1792)
}

function _fallback() payable {
    revert
}

function mint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    revert with 0, 'NFT: claim'
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor15)
}

function setMaxTotalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    maxTotalSupply = arg1
    emit 0xf8cbdbee: arg1
}

function sub_8ba448c2(?) {
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if stor15 != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    sub_8423df79 = uint8(bool(cd[4]))
    emit 0xfb4ba02c: bool(cd[4])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor15 != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
    else:
        if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERC721: approve to caller'
    if stor15 != msg.sender:
        stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        stor7[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
}

function setRoyaltyBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    require ext_code.size(stor17)
    staticcall stor17.MAX_BPS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if arg1 >= ext_call.return_data[16 len 16]:
        revert with 0, 'NFT: Bps provided must be less than 10,000'
    royaltyBps = arg1
    emit 0x244ea8d7: arg1
}

function sub_5da53d58(?) {
    if not sub_fd598550.length:
        revert with 0, 'NFT: no public mint condition'
    if sub_fd598550.length < 1:
        revert with 0, 17
    if var14001 >= sub_fd598550.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_fd598550[var16001].field_0):
        return var16003
    if not var20001:
        revert with 0, 17
    if var26001 >= sub_fd598550.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_fd598550[var28001].field_0):
        return var28003
    if not var32001:
        revert with 0, 17
    if var38001 >= sub_fd598550.length:
        revert with 0, 50
    if block.timestamp >= uint256(sub_fd598550[var40001].field_0):
        return var40003
    if not var44001:
        revert with 0, 17
    if var50001 >= sub_fd598550.length:
        revert with 0, 50
    # nil
}

function pause() {
    if stor15 != msg.sender:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    else:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor15 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
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
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function unpause() {
    if stor15 != msg.sender:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    else:
        if not uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor15 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor17)
    staticcall stor17.getRoyaltyTreasury(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor17)
    staticcall stor17.MAX_BPS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    if arg2 and royaltyBps > -1 / arg2:
        revert with 0, 17
    if not ext_call.return_data[16 len 16]:
        revert with 0, 18
    return address(ext_call.return_data[0]), arg2 * royaltyBps / uint128(ext_call.return_data[0])
}

function sub_b7cdd0bc(?) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if stor15 != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    if nextTokenId > !cd[4]:
        revert with 0, 17
    if nextTokenId + cd[4] > maxTotalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: cannot mint more than maxTotalSupply'
    if nextTokenId > !cd[4]:
        revert with 0, 17
    nextTokenId += cd[4]
}

function withdrawFunds() {
    require ext_code.size(stor17)
    staticcall stor17.0xa217fddf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    if stor15 != msg.sender:
        staticcall stor17.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], msg.sender
    else:
        staticcall stor17.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT: only a protocol admin can call this function.'
    require ext_code.size(stor17)
    staticcall stor17.getRoyaltyTreasury(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'NFT: failed to withdraw funds'
    emit FundsWithdrawn(eth.balance(this.address), address(ext_call.return_data[0]));
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if stor15 != msg.sender:
        if ownerOf[arg2] != msg.sender:
            if stor15 != msg.sender:
                if not stor7[stor4[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor7[stor4[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg2]:
            if stor15 != msg.sender:
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

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor15 != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if stor15 != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if uint256(roleMember[arg1][1][address(arg2)].field_0):
        if uint256(roleMember[arg1][1][address(arg2)].field_0) < 1:
            revert with 0, 17
        if uint256(roleMember[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(roleMember[arg1].field_0) - 1 != uint256(roleMember[arg1][1][address(arg2)].field_0) - 1:
            if uint256(roleMember[arg1].field_0) - 1 >= uint256(roleMember[arg1].field_0):
                revert with 0, 50
            if uint256(roleMember[arg1][1][address(arg2)].field_0) - 1 >= uint256(roleMember[arg1].field_0):
                revert with 0, 50
            uint256(roleMember[arg1][uint256(roleMember[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0)
            uint256(roleMember[arg1][1][uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0)].field_0) = uint256(roleMember[arg1][1][address(arg2)].field_0)
        if not uint256(roleMember[arg1].field_0):
            revert with 0, 49
        uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0) = 0
        uint256(roleMember[arg1].field_0)--
        uint256(roleMember[arg1][1][address(arg2)].field_0) = 0
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if stor15 != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length.field_1) < 32:
            revert with 0, 34
        if not arg1.length:
            stor24.length = 0
            idx = 0
            while uint255(stor24.length.field_1) + 31 / 32 > idx:
                uint256(stor24[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor24.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor24[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while uint255(stor24.length.field_1) + 31 / 32 > idx:
                uint256(stor24[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor24.length = 0
            idx = 0
            while stor24.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor24[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor24.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor24[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor24.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor24[idx].field_0) = 0
                idx = idx + 1
                continue 
    emit BaseTokenURIUpdated(Array(len=arg1.length, data=arg1[all]));
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(stor17)
    staticcall stor17.0xa217fddf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    if stor15 != msg.sender:
        staticcall stor17.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], msg.sender
    else:
        staticcall stor17.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NFT: only a protocol admin can call this function.'
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length.field_1) < 32:
            revert with 0, 34
        if not arg1.length:
            stor23.length = 0
            idx = 0
            while uint255(stor23.length.field_1) + 31 / 32 > idx:
                uint256(stor23[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor23.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor23[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while uint255(stor23.length.field_1) + 31 / 32 > idx:
                uint256(stor23[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor23.length) == stor23.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor23.length = 0
            idx = 0
            while stor23.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor23[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor23.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor23[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor23.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor23[idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_26fa33ec(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor15 != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    if 1 > !nextTokenId:
        revert with 0, 17
    if nextTokenId + 1 > maxTotalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: cannot mint more than maxTotalSupply'
    if bool(stor25[stor19].field_0):
        if bool(stor25[stor19].field_0) == uint255(stor25[stor19].field_1) < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            uint256(stor25[stor19].field_0) = 0
            idx = 0
            while uint255(stor25[stor19].field_1) + 31 / 32 > idx:
                uint256(stor25[stor19][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor25[stor19].field_0) = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                uint256(stor25[stor19][s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while uint255(stor25[stor19].field_1) + 31 / 32 > idx:
                uint256(stor25[stor19][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor25[stor19].field_0) == stor25[stor19].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 4).length:
            uint256(stor25[stor19].field_0) = 0
            idx = 0
            while stor25[stor19].field_1 % 128 + 31 / 32 > idx:
                uint256(stor25[stor19][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor25[stor19].field_0) = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                uint256(stor25[stor19][s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor25[stor19].field_1 % 128 + 31 / 32 > idx:
                uint256(stor25[stor19][idx].field_0) = 0
                idx = idx + 1
                continue 
    if nextTokenId > -2:
        revert with 0, 17
    nextTokenId++
}

function sub_4ce40a32(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor15 != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: must have minter role to mint'
    if nextTokenId > !('cd', 4).length:
        revert with 0, 17
    if nextTokenId + ('cd', 4).length > maxTotalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: cannot mint more than maxTotalSupply'
    idx = 0
    s = nextTokenId
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        mem[32] = 25
        if bool(stor25[s].field_0):
            if bool(stor25[s].field_0) == uint255(stor25[s].field_1) < 32:
                revert with 0, 34
            mem[0] = sha3(s, 25)
            if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                uint256(stor25[s].field_0) = 0
                t = sha3(sha3(s, 25))
                while sha3(sha3(s, 25)) + (uint255(stor25[s].field_1) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            else:
                uint256(stor25[s].field_0) = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                t = sha3(sha3(s, 25))
                u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                while cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 > u:
                    uint256(stor[t]) = cd[u]
                    t = t + 1
                    u = u + 32
                    continue 
                u = t
                while sha3(sha3(s, 25)) + (uint255(stor25[s].field_1) + 31 / 32) > u:
                    uint256(stor[u]) = 0
                    u = u + 1
                    continue 
        else:
            if bool(stor25[s].field_0) == stor25[s].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(s, 25)
            if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                uint256(stor25[s].field_0) = 0
                t = sha3(sha3(s, 25))
                while sha3(sha3(s, 25)) + (stor25[s].field_1 % 128 + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            else:
                uint256(stor25[s].field_0) = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                t = sha3(sha3(s, 25))
                u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                while cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 > u:
                    uint256(stor[t]) = cd[u]
                    t = t + 1
                    u = u + 32
                    continue 
                u = t
                while sha3(sha3(s, 25)) + (stor25[s].field_1 % 128 + 31 / 32) > u:
                    uint256(stor[u]) = 0
                    u = u + 1
                    continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    nextTokenId = s
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor2[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[uint255(stor2.length.field_1) + ceil32(uint255(stor2.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor2[s].field_256)
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
                    mem[idx + 32] = uint256(stor2[s].field_256)
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

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor3.length.field_1):
                if 31 < uint255(stor3.length.field_1):
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
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
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length.field_1)) + 192 len ceil32(uint255(stor3.length.field_1))] = mem[128 len ceil32(uint255(stor3.length.field_1))]
        if ceil32(uint255(stor3.length.field_1)) > uint255(stor3.length.field_1):
            mem[uint255(stor3.length.field_1) + ceil32(uint255(stor3.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))], mem[(2 * ceil32(uint255(stor3.length.field_1))) + 192 len 2 * ceil32(uint255(stor3.length.field_1))]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor3.length.field_1):
            if 31 < uint255(stor3.length.field_1):
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while uint255(stor3.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
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
                    mem[idx + 32] = uint256(stor3[s].field_256)
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

function contractURI() {
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length.field_1) < 32:
            revert with 0, 34
        if bool(stor23.length):
            if bool(stor23.length) == uint255(stor23.length.field_1) < 32:
                revert with 0, 34
            if uint255(stor23.length.field_1):
                if 31 < uint255(stor23.length.field_1):
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor23.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor23[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor23.length.field_1)), data=mem[128 len ceil32(uint255(stor23.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor23.length.field_8)
        else:
            if bool(stor23.length) == stor23.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor23.length.field_1 % 128:
                if 31 < stor23.length.field_1 % 128:
                    mem[128] = uint256(stor23.field_0)
                    idx = 128
                    s = 0
                    while stor23.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor23[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor23.length.field_1)), data=mem[128 len ceil32(uint255(stor23.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor23.length.field_8)
        mem[ceil32(uint255(stor23.length.field_1)) + 192 len ceil32(uint255(stor23.length.field_1))] = mem[128 len ceil32(uint255(stor23.length.field_1))]
        if ceil32(uint255(stor23.length.field_1)) > uint255(stor23.length.field_1):
            mem[uint255(stor23.length.field_1) + ceil32(uint255(stor23.length.field_1)) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor23.length.field_1)), data=mem[128 len ceil32(uint255(stor23.length.field_1))], mem[(2 * ceil32(uint255(stor23.length.field_1))) + 192 len 2 * ceil32(uint255(stor23.length.field_1))]), 
    if bool(stor23.length) == stor23.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor23.length):
        if bool(stor23.length) == uint255(stor23.length.field_1) < 32:
            revert with 0, 34
        if uint255(stor23.length.field_1):
            if 31 < uint255(stor23.length.field_1):
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while uint255(stor23.length.field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor23[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor23.length.field_8)
    else:
        if bool(stor23.length) == stor23.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor23.length.field_1 % 128:
            if 31 < stor23.length.field_1 % 128:
                mem[128] = uint256(stor23.field_0)
                idx = 128
                s = 0
                while stor23.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor23[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor23.length.field_8)
    mem[ceil32(stor23.length.field_1 % 128) + 192 len ceil32(stor23.length.field_1 % 128)] = mem[128 len ceil32(stor23.length.field_1 % 128)]
    if ceil32(stor23.length.field_1 % 128) > stor23.length.field_1 % 128:
        mem[stor23.length.field_1 % 128 + ceil32(stor23.length.field_1 % 128) + 192] = 0
    return Array(len=stor23.length % 128, data=mem[128 len ceil32(stor23.length.field_1 % 128)], mem[(2 * ceil32(stor23.length.field_1 % 128)) + 192 len 2 * ceil32(stor23.length.field_1 % 128)]), 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor15 != msg.sender:
        if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
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
            s = uint256(roleAdmin[arg1].field_256)
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
            if uint256(roleAdmin[arg1].field_256) + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    else:
        if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
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
            s = uint256(roleAdmin[arg1].field_256)
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
            if uint256(roleAdmin[arg1].field_256) + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        if not uint256(roleMember[arg1][1][address(arg2)].field_0):
            uint256(roleMember[arg1].field_0)++
            address(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0) = arg2
            Mask(96, 0, roleMember[arg1][uint256(roleMember[arg1].field_0)].field_160) = 0
            uint256(roleMember[arg1][1][address(arg2)].field_0) = uint256(roleMember[arg1].field_0)
    else:
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        if stor15 != msg.sender:
            emit RoleGranted(arg1, arg2, msg.sender);
        else:
            emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if not uint256(roleMember[arg1][1][address(arg2)].field_0):
            uint256(roleMember[arg1].field_0)++
            address(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0) = arg2
            Mask(96, 0, roleMember[arg1][uint256(roleMember[arg1].field_0)].field_160) = 0
            uint256(roleMember[arg1][1][address(arg2)].field_0) = uint256(roleMember[arg1].field_0)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if stor15 != msg.sender:
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
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not uint8(roleAdmin[0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c][address(arg1)].field_0):
                    if not uint8(roleAdmin[0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c][address(arg2)].field_0):
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor15 != msg.sender:
        if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
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
            s = uint256(roleAdmin[arg1].field_256)
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
            if uint256(roleAdmin[arg1].field_256) + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    else:
        if not uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
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
            s = uint256(roleAdmin[arg1].field_256)
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
            if uint256(roleAdmin[arg1].field_256) + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if stor15 != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if uint256(roleMember[arg1][1][address(arg2)].field_0):
        if uint256(roleMember[arg1][1][address(arg2)].field_0) < 1:
            revert with 0, 17
        if uint256(roleMember[arg1].field_0) < 1:
            revert with 0, 17
        if uint256(roleMember[arg1].field_0) - 1 != uint256(roleMember[arg1][1][address(arg2)].field_0) - 1:
            if uint256(roleMember[arg1].field_0) - 1 >= uint256(roleMember[arg1].field_0):
                revert with 0, 50
            if uint256(roleMember[arg1][1][address(arg2)].field_0) - 1 >= uint256(roleMember[arg1].field_0):
                revert with 0, 50
            uint256(roleMember[arg1][uint256(roleMember[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0)
            uint256(roleMember[arg1][1][uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0)].field_0) = uint256(roleMember[arg1][1][address(arg2)].field_0)
        if not uint256(roleMember[arg1].field_0):
            revert with 0, 49
        uint256(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0) = 0
        uint256(roleMember[arg1].field_0)--
        uint256(roleMember[arg1][1][address(arg2)].field_0) = 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if stor15 != msg.sender:
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
    if paused:
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not uint8(roleAdmin[0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c][address(arg1)].field_0):
                    if not uint8(roleAdmin[0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c][address(arg2)].field_0):
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    if stor15 != msg.sender:
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

function sub_0a5d6401(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    if stor15 != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin role'
        if not ('cd', 4).length:
            revert with 0, 'NFT: needs a list of conditions'
        sub_fd598550.length = 0
        mem[0] = 21
        idx = 0
        while 8 * sub_fd598550.length > idx:
            uint256(sub_fd598550[idx].field_0) = 0
            uint256(sub_fd598550[idx].field_256) = 0
            uint256(sub_fd598550[idx].field_512) = 0
            uint256(sub_fd598550[idx].field_768) = 0
            uint256(sub_fd598550[idx].field_1024) = 0
            uint256(sub_fd598550[idx].field_1280) = 0
            address(sub_fd598550[idx].field_1536) = 0
            uint256(sub_fd598550[idx].field_1792) = 0
            idx = idx + 8
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not s:
                if cd[((256 * idx) + cd[4] + 68)] <= 0:
                    revert with 0, 'NFT: max mint supply cannot be 0'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 132)] <= 0:
                    revert with 0, 'NFT: quantity limit cannot be 0'
                _93 = mem[64]
                mem[64] = mem[64] + 256
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 17
                mem[_93] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_93 + 32] = cd[((256 * idx) + cd[4] + 68)]
                mem[_93 + 64] = 0
                mem[_93 + 96] = cd[((256 * idx) + cd[4] + 132)]
                mem[_93 + 128] = cd[((256 * idx) + cd[4] + 164)]
                mem[_93 + 160] = cd[((256 * idx) + cd[4] + 196)]
                require cd[((256 * idx) + cd[4] + 228)] == address(cd[((256 * idx) + cd[4] + 228)])
                mem[_93 + 192] = address(cd[((256 * idx) + cd[4] + 228)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_93 + 224] = cd[((256 * idx) + cd[4] + 260)]
            else:
                if s >= cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 'NFT: startTimestamp must be in ascending order'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 68)] <= 0:
                    revert with 0, 'NFT: max mint supply cannot be 0'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 132)] <= 0:
                    revert with 0, 'NFT: quantity limit cannot be 0'
                _104 = mem[64]
                mem[64] = mem[64] + 256
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 17
                mem[_104] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_104 + 32] = cd[((256 * idx) + cd[4] + 68)]
                mem[_104 + 64] = 0
                mem[_104 + 96] = cd[((256 * idx) + cd[4] + 132)]
                mem[_104 + 128] = cd[((256 * idx) + cd[4] + 164)]
                mem[_104 + 160] = cd[((256 * idx) + cd[4] + 196)]
                require cd[((256 * idx) + cd[4] + 228)] == address(cd[((256 * idx) + cd[4] + 228)])
                mem[_104 + 192] = address(cd[((256 * idx) + cd[4] + 228)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_104 + 224] = cd[((256 * idx) + cd[4] + 260)]
            sub_fd598550.length++
            mem[0] = 21
            uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
            uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
            uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
            uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
            uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
            uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
            address(sub_fd598550[sub_fd598550.length].field_1536) = address(cd[((256 * idx) + cd[4] + 228)])
            uint256(sub_fd598550[sub_fd598550.length].field_1792) = cd[((256 * idx) + cd[4] + 260)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = cd[((256 * idx) + cd[4] + 36)]
            continue 
        _83 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_fd598550.length
        mem[0] = 21
        idx = 0
        s = 0
        t = mem[64] + 64
        while idx < sub_fd598550.length:
            mem[t] = uint256(stor[s + sha3(mem[0])])
            mem[t + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            mem[t + 64] = uint256(stor[s + sha3(mem[0]) + 2])
            mem[t + 96] = uint256(stor[s + sha3(mem[0]) + 3])
            mem[t + 128] = uint256(stor[s + sha3(mem[0]) + 4])
            mem[t + 160] = uint256(stor[s + sha3(mem[0]) + 5])
            mem[t + 192] = address(stor[s + sha3(mem[0]) + 6])
            mem[t + 224] = uint256(stor[s + sha3(mem[0]) + 7])
            idx = idx + 1
            s = s + 8
            t = t + 256
            continue 
        emit 0x795ebb3c: mem[mem[64] len _83 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin role'
        if not ('cd', 4).length:
            revert with 0, 'NFT: needs a list of conditions'
        sub_fd598550.length = 0
        mem[0] = 21
        idx = 0
        while 8 * sub_fd598550.length > idx:
            uint256(sub_fd598550[idx].field_0) = 0
            uint256(sub_fd598550[idx].field_256) = 0
            uint256(sub_fd598550[idx].field_512) = 0
            uint256(sub_fd598550[idx].field_768) = 0
            uint256(sub_fd598550[idx].field_1024) = 0
            uint256(sub_fd598550[idx].field_1280) = 0
            address(sub_fd598550[idx].field_1536) = 0
            uint256(sub_fd598550[idx].field_1792) = 0
            idx = idx + 8
            continue 
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not s:
                if cd[((256 * idx) + cd[4] + 68)] <= 0:
                    revert with 0, 'NFT: max mint supply cannot be 0'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 132)] <= 0:
                    revert with 0, 'NFT: quantity limit cannot be 0'
                _98 = mem[64]
                mem[64] = mem[64] + 256
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 17
                mem[_98] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_98 + 32] = cd[((256 * idx) + cd[4] + 68)]
                mem[_98 + 64] = 0
                mem[_98 + 96] = cd[((256 * idx) + cd[4] + 132)]
                mem[_98 + 128] = cd[((256 * idx) + cd[4] + 164)]
                mem[_98 + 160] = cd[((256 * idx) + cd[4] + 196)]
                require cd[((256 * idx) + cd[4] + 228)] == address(cd[((256 * idx) + cd[4] + 228)])
                mem[_98 + 192] = address(cd[((256 * idx) + cd[4] + 228)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_98 + 224] = cd[((256 * idx) + cd[4] + 260)]
            else:
                if s >= cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 'NFT: startTimestamp must be in ascending order'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 68)] <= 0:
                    revert with 0, 'NFT: max mint supply cannot be 0'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if cd[((256 * idx) + cd[4] + 132)] <= 0:
                    revert with 0, 'NFT: quantity limit cannot be 0'
                _108 = mem[64]
                mem[64] = mem[64] + 256
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                    revert with 0, 17
                mem[_108] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_108 + 32] = cd[((256 * idx) + cd[4] + 68)]
                mem[_108 + 64] = 0
                mem[_108 + 96] = cd[((256 * idx) + cd[4] + 132)]
                mem[_108 + 128] = cd[((256 * idx) + cd[4] + 164)]
                mem[_108 + 160] = cd[((256 * idx) + cd[4] + 196)]
                require cd[((256 * idx) + cd[4] + 228)] == address(cd[((256 * idx) + cd[4] + 228)])
                mem[_108 + 192] = address(cd[((256 * idx) + cd[4] + 228)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[_108 + 224] = cd[((256 * idx) + cd[4] + 260)]
            sub_fd598550.length++
            mem[0] = 21
            uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
            uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
            uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
            uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
            uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
            uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
            address(sub_fd598550[sub_fd598550.length].field_1536) = address(cd[((256 * idx) + cd[4] + 228)])
            uint256(sub_fd598550[sub_fd598550.length].field_1792) = cd[((256 * idx) + cd[4] + 260)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = cd[((256 * idx) + cd[4] + 36)]
            continue 
        _84 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = sub_fd598550.length
        mem[0] = 21
        idx = 0
        s = 0
        t = mem[64] + 64
        while idx < sub_fd598550.length:
            mem[t] = uint256(stor[s + sha3(mem[0])])
            mem[t + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            mem[t + 64] = uint256(stor[s + sha3(mem[0]) + 2])
            mem[t + 96] = uint256(stor[s + sha3(mem[0]) + 3])
            mem[t + 128] = uint256(stor[s + sha3(mem[0]) + 4])
            mem[t + 160] = uint256(stor[s + sha3(mem[0]) + 5])
            mem[t + 192] = address(stor[s + sha3(mem[0]) + 6])
            mem[t + 224] = uint256(stor[s + sha3(mem[0]) + 7])
            idx = idx + 1
            s = s + 8
            t = t + 256
            continue 
        emit 0x795ebb3c: mem[mem[64] len _84 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
}

function multicall(bytes[] arg1) {
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
            _115 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[s + _115] = mem[s + _107 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _115 + -mem[64] - 4]
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
                    _227 = mem[_108]
                    mem[mem[64] + 36] = mem[_108]
                    s = 0
                    while s < _227:
                        mem[s + _218 + 68] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_227) > _227:
                        mem[_227 + _218 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_227) + _218 + -mem[64] + 68
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
                _228 = mem[_108]
                mem[mem[64] + 36] = mem[_108]
                s = 0
                while s < _228:
                    mem[s + _220 + 68] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_228) > _228:
                    mem[_228 + _220 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_228) + _220 + -mem[64] + 68
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _115] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _115 + -mem[64] - 4]
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
                _229 = mem[_108]
                mem[mem[64] + 36] = mem[_108]
                s = 0
                while s < _229:
                    mem[s + _222 + 68] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_229) > _229:
                    mem[_229 + _222 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_229) + _222 + -mem[64] + 68
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
            _230 = mem[_108]
            mem[mem[64] + 36] = mem[_108]
            s = 0
            while s < _230:
                mem[s + _224 + 68] = mem[s + _108 + 32]
                s = s + 32
                continue 
            if ceil32(_230) > _230:
                mem[_230 + _224 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_230) + _224 + -mem[64] + 68
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
            _235 = mem[64]
            s = 0
            while s < cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                mem[s + _235] = mem[s + _212 + 32]
                s = s + 32
                continue 
            if ceil32(cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]) <= cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]:
                delegate this.address.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _235 + -mem[64] - 4]
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
            mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _235] = 0
            delegate this.address.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + _235 + -mem[64] - 4]
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor15 != msg.sender:
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
                                            if paused:
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
                                                        if paused:
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
                                                        if paused:
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
                                                    if paused:
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
                                                                if paused:
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
                                                                if paused:
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
                                                        if paused:
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
                                                                    if paused:
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
                                                                    if paused:
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
                                            if paused:
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
                                                        if paused:
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
                                                        if paused:
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
                                                    if paused:
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
                                                                if paused:
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
                                                                if paused:
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
                                                        if paused:
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
                                                                    if paused:
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
                                                                    if paused:
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not bool(stor24.length):
        if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor24.length):
            if bool(stor24.length) == uint255(stor24.length.field_1) < 32:
                revert with 0, 34
            if not uint255(stor24.length.field_1):
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1) > 0:
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 < uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 < stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                            if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                                mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                        if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                            mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128 > 0:
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 < uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 < stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                            if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                                mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                        if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                            mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            else:
                if 31 >= uint255(stor24.length.field_1):
                    mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1) > 0:
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if bool(stor25[arg1].field_0):
                                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                        revert with 0, 34
                                    if uint255(stor25[arg1].field_1):
                                        if 31 < uint255(stor25[arg1].field_1):
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                else:
                                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor25[arg1].field_1 % 128:
                                        if 31 < stor25[arg1].field_1 % 128:
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                                if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                                    mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 < uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 < stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                            if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                                mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128 > 0:
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if bool(stor25[arg1].field_0):
                                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                        revert with 0, 34
                                    if uint255(stor25[arg1].field_1):
                                        if 31 < uint255(stor25[arg1].field_1):
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                else:
                                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor25[arg1].field_1 % 128:
                                        if 31 < stor25[arg1].field_1 % 128:
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                                if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                                    mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 < uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 < stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                            if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                                mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
                else:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor24.length.field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor24[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1) > 0:
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if bool(stor25[arg1].field_0):
                                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                        revert with 0, 34
                                    if uint255(stor25[arg1].field_1):
                                        if 31 >= uint255(stor25[arg1].field_1):
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                        else:
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor25[arg1].field_1 % 128:
                                        if 31 >= stor25[arg1].field_1 % 128:
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                        else:
                                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                            idx = ceil32(stor24.length.field_1 % 128) + 160
                                            s = 0
                                            while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 >= uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                    else:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 >= stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                    else:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        if not stor24.length.field_1 % 128:
                            return ''
                        if not arg1:
                            mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
                            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
                            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
                            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
                        s = 0
                        idx = arg1
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(stor24.length.field_1 % 128) + 128] = s
                        if not s:
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                                    revert with 0, 50
                                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                            if ceil32(stor24.length.field_1 % 128) <= stor24.length.field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
                                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128]) <= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                                        return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                                    return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                                _12336 = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                                return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(_12336) + 32], 
                        else:
                            mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = arg1
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                                    revert with 0, 50
                                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                            if ceil32(stor24.length.field_1 % 128) <= stor24.length.field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
                                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128]) <= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                                        return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                                    mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                                    return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                                _12340 = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                                    return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                                return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(_12340) + 32], 
                        ('gt', ('mask_shl', 251, 5, 0, ('add', 31, ('type', 7, ('field', 1, ('stor', ('length', ('name', 'stor24', 24))))))), ('type', 7, ('field', 1, ('stor', ('length', ('name', 'stor24', 24))))))
                        mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
                        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
                        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128 > 0:
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if bool(stor25[arg1].field_0):
                                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                    revert with 0, 34
                                if uint255(stor25[arg1].field_1):
                                    if 31 >= uint255(stor25[arg1].field_1):
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                    else:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor25[arg1].field_1 % 128:
                                    if 31 >= stor25[arg1].field_1 % 128:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                    else:
                                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                        idx = ceil32(stor24.length.field_1 % 128) + 160
                                        s = 0
                                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 >= uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                else:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 >= stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                                else:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
            if not stor24.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor24.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
                mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
        if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor24.length.field_1 % 128:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1) > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128 > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not stor24.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor24.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
                mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
        if 31 >= stor24.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1) > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128 > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(stor24.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(stor24.length.field_1 % 128) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(stor24.length.field_1 % 128) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not stor24.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor24.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
                mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
        mem[128] = uint256(stor24.field_0)
        idx = 128
        s = 0
        while stor24.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = uint256(stor24[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_1) > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 >= uint255(stor25[arg1].field_1):
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 >= stor25[arg1].field_1 % 128:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(stor24.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 >= uint255(stor25[arg1].field_1):
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(stor24.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 >= stor25[arg1].field_1 % 128:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(stor24.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
            if not stor24.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
                mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor24.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
                mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_1 % 128 > 0:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 >= uint255(stor25[arg1].field_1):
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(stor24.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 >= stor25[arg1].field_1 % 128:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(stor24.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 >= uint255(stor25[arg1].field_1):
                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(stor24.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor24.length.field_1 % 128) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 >= stor25[arg1].field_1 % 128:
                        mem[ceil32(stor24.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(stor24.length.field_1 % 128) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(stor24.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor24.length.field_1 % 128) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
        if not stor24.length.field_1 % 128:
            return ''
        if not arg1:
            mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 257] = mem[ceil32(stor24.length.field_1 % 128) + 192]
            mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])] = mem[ceil32(stor24.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192]) > mem[ceil32(stor24.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + 192] + ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + 192], data=mem[ceil32(stor24.length.field_1 % 128) + stor24.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor24.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
            if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
                mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
        mem[ceil32(stor24.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor24.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor24.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
        if ceil32(stor24.length.field_1 % 128) <= stor24.length.field_1 % 128:
            mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128]) > mem[ceil32(stor24.length.field_1 % 128) + 128]:
                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
            _12363 = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(_12363) + 32], 
        mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])] = mem[ceil32(stor24.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128])]
        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor24.length.field_1 % 128) + 128]) > mem[ceil32(stor24.length.field_1 % 128) + 128]:
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
            mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
        _12365 = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor24.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor24.length.field_1 % 128) + 128] + ceil32(stor24.length.field_1 % 128) + ceil32(s) + stor24.length.field_1 % 128 + 224 len ceil32(_12365) + 32], 
    if bool(stor24.length) == uint255(stor24.length.field_1) < 32:
        revert with 0, 34
    mem[96] = uint255(stor24.length.field_1)
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length.field_1) < 32:
            revert with 0, 34
        if not uint255(stor24.length.field_1):
            mem[0] = arg1
            mem[32] = 25
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1) > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                                    s = 0
                                    while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                                    s = 0
                                    while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
                if not uint255(stor24.length.field_1):
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                    return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                    if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                            _10863 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10863)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10863)]
                            if ceil32(_10863) > _10863:
                                mem[_10863 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10863) + 32], 
                        _10864 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10864)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10864)]
                        if ceil32(_10864) > _10864:
                            mem[_10864 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10864) + 32], 
                    mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10865 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10865)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10865)]
                        if ceil32(_10865) > _10865:
                            mem[_10865 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10865) + 32], 
                    _10866 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10866)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10866)]
                    if ceil32(_10866) > _10866:
                        mem[_10866 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10866) + 32], 
                mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10867 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10867)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10867)]
                        if ceil32(_10867) > _10867:
                            mem[_10867 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10867) + 32], 
                    _10868 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10868)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10868)]
                    if ceil32(_10868) > _10868:
                        mem[_10868 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10868) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10869 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10869)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10869)]
                    if ceil32(_10869) > _10869:
                        mem[_10869 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10869) + 32], 
                _10870 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10870)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10870)]
                if ceil32(_10870) > _10870:
                    mem[_10870 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10870) + 32], 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor25[arg1].field_1 % 128 > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                    if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                        mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                    mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not uint255(stor24.length.field_1):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10871 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10871)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10871)]
                        if ceil32(_10871) > _10871:
                            mem[_10871 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10871) + 32], 
                    _10872 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10872)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10872)]
                    if ceil32(_10872) > _10872:
                        mem[_10872 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10872) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10873 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10873)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10873)]
                    if ceil32(_10873) > _10873:
                        mem[_10873 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10873) + 32], 
                _10874 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10874)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10874)]
                if ceil32(_10874) > _10874:
                    mem[_10874 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10874) + 32], 
            mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10875 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10875)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10875)]
                    if ceil32(_10875) > _10875:
                        mem[_10875 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10875) + 32], 
                _10876 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10876)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10876)]
                if ceil32(_10876) > _10876:
                    mem[_10876 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10876) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10877 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10877)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10877)]
                if ceil32(_10877) > _10877:
                    mem[_10877 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10877) + 32], 
            _10878 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10878)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10878)]
            if ceil32(_10878) > _10878:
                mem[_10878 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10878) + 32], 
        if 31 >= uint255(stor24.length.field_1):
            mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
            mem[0] = arg1
            mem[32] = 25
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1) > 0:
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if bool(stor25[arg1].field_0):
                            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                                revert with 0, 34
                            if uint255(stor25[arg1].field_1):
                                if 31 < uint255(stor25[arg1].field_1):
                                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                                    s = 0
                                    while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor25[arg1].field_1 % 128:
                                if 31 < stor25[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                                    s = 0
                                    while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                        if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                            mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                    if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                        mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
                if not uint255(stor24.length.field_1):
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                    mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                    return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                    if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                            _10879 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10879)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10879)]
                            if ceil32(_10879) > _10879:
                                mem[_10879 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10879) + 32], 
                        _10880 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10880)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10880)]
                        if ceil32(_10880) > _10880:
                            mem[_10880 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10880) + 32], 
                    mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10881 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10881)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10881)]
                        if ceil32(_10881) > _10881:
                            mem[_10881 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10881) + 32], 
                    _10882 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10882)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10882)]
                    if ceil32(_10882) > _10882:
                        mem[_10882 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10882) + 32], 
                mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10883 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10883)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10883)]
                        if ceil32(_10883) > _10883:
                            mem[_10883 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10883) + 32], 
                    _10884 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10884)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10884)]
                    if ceil32(_10884) > _10884:
                        mem[_10884 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10884) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10885 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10885)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10885)]
                    if ceil32(_10885) > _10885:
                        mem[_10885 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10885) + 32], 
                _10886 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10886)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10886)]
                if ceil32(_10886) > _10886:
                    mem[_10886 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10886) + 32], 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor25[arg1].field_1 % 128 > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                    if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                        mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                    mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not uint255(stor24.length.field_1):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10887 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10887)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10887)]
                        if ceil32(_10887) > _10887:
                            mem[_10887 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10887) + 32], 
                    _10888 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10888)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10888)]
                    if ceil32(_10888) > _10888:
                        mem[_10888 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10888) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10889 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10889)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10889)]
                    if ceil32(_10889) > _10889:
                        mem[_10889 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10889) + 32], 
                _10890 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10890)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10890)]
                if ceil32(_10890) > _10890:
                    mem[_10890 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10890) + 32], 
            mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10891 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10891)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10891)]
                    if ceil32(_10891) > _10891:
                        mem[_10891 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10891) + 32], 
                _10892 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10892)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10892)]
                if ceil32(_10892) > _10892:
                    mem[_10892 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10892) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10893 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10893)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10893)]
                if ceil32(_10893) > _10893:
                    mem[_10893 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10893) + 32], 
            _10894 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10894)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10894)]
            if ceil32(_10894) > _10894:
                mem[_10894 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10894) + 32], 
        mem[128] = uint256(stor24.field_0)
        idx = 128
        s = 0
        while uint255(stor24.length.field_1) + 96 > idx:
            mem[idx + 32] = uint256(stor24[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 25
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_1) > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 >= uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 >= stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 >= uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 >= stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
            if not uint255(stor24.length.field_1):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                        _12303 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12303)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12303)]
                        if ceil32(_12303) > _12303:
                            mem[_12303 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12303) + 32], 
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    _12304 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12304)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12304)]
                    if ceil32(_12304) > _12304:
                        mem[_12304 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12304) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    _12305 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12305)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12305)]
                    if ceil32(_12305) > _12305:
                        mem[_12305 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12305) + 32], 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12306 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12306)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12306)]
                if ceil32(_12306) > _12306:
                    mem[_12306 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12306) + 32], 
            mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    _12307 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12307)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12307)]
                    if ceil32(_12307) > _12307:
                        mem[_12307 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12307) + 32], 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12308 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12308)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12308)]
                if ceil32(_12308) > _12308:
                    mem[_12308 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12308) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12309 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12309)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12309)]
                if ceil32(_12309) > _12309:
                    mem[_12309 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12309) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12310 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12310)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12310)]
            if ceil32(_12310) > _12310:
                mem[_12310 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12310) + 32], 
        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_1 % 128 > 0:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 >= uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 >= stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 >= uint255(stor25[arg1].field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 >= stor25[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
        if not uint255(stor24.length.field_1):
            return ''
        if not arg1:
            mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
            return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    _12311 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12311)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12311)]
                    if ceil32(_12311) > _12311:
                        mem[_12311 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12311) + 32], 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12312 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12312)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12312)]
                if ceil32(_12312) > _12312:
                    mem[_12312 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12312) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12313 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12313)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12313)]
                if ceil32(_12313) > _12313:
                    mem[_12313 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12313) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12314 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12314)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12314)]
            if ceil32(_12314) > _12314:
                mem[_12314 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12314) + 32], 
        mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12315 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12315)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12315)]
                if ceil32(_12315) > _12315:
                    mem[_12315 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12315) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12316 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12316)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12316)]
            if ceil32(_12316) > _12316:
                mem[_12316 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12316) + 32], 
        mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12317 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12317)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12317)]
            if ceil32(_12317) > _12317:
                mem[_12317 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12317) + 32], 
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        _12318 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12318)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12318)]
        if ceil32(_12318) > _12318:
            mem[_12318 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12318) + 32], 
    if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor24.length.field_1 % 128:
        mem[0] = arg1
        mem[32] = 25
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_1) > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                    if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                        mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                    mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not uint255(stor24.length.field_1):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10895 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10895)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10895)]
                        if ceil32(_10895) > _10895:
                            mem[_10895 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10895) + 32], 
                    _10896 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10896)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10896)]
                    if ceil32(_10896) > _10896:
                        mem[_10896 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10896) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10897 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10897)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10897)]
                    if ceil32(_10897) > _10897:
                        mem[_10897 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10897) + 32], 
                _10898 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10898)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10898)]
                if ceil32(_10898) > _10898:
                    mem[_10898 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10898) + 32], 
            mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10899 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10899)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10899)]
                    if ceil32(_10899) > _10899:
                        mem[_10899 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10899) + 32], 
                _10900 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10900)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10900)]
                if ceil32(_10900) > _10900:
                    mem[_10900 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10900) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10901 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10901)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10901)]
                if ceil32(_10901) > _10901:
                    mem[_10901 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10901) + 32], 
            _10902 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10902)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10902)]
            if ceil32(_10902) > _10902:
                mem[_10902 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10902) + 32], 
        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_1 % 128 > 0:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                    mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 < uint255(stor25[arg1].field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 < stor25[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
            if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
        if not uint255(stor24.length.field_1):
            return ''
        if not arg1:
            mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
            return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10903 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10903)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10903)]
                    if ceil32(_10903) > _10903:
                        mem[_10903 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10903) + 32], 
                _10904 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10904)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10904)]
                if ceil32(_10904) > _10904:
                    mem[_10904 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10904) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10905 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10905)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10905)]
                if ceil32(_10905) > _10905:
                    mem[_10905 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10905) + 32], 
            _10906 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10906)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10906)]
            if ceil32(_10906) > _10906:
                mem[_10906 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10906) + 32], 
        mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10907 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10907)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10907)]
                if ceil32(_10907) > _10907:
                    mem[_10907 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10907) + 32], 
            _10908 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10908)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10908)]
            if ceil32(_10908) > _10908:
                mem[_10908 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10908) + 32], 
        mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            _10909 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10909)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10909)]
            if ceil32(_10909) > _10909:
                mem[_10909 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10909) + 32], 
        _10910 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10910)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10910)]
        if ceil32(_10910) > _10910:
            mem[_10910 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10910) + 32], 
    if 31 >= stor24.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
        mem[0] = arg1
        mem[32] = 25
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_1) > 0:
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if bool(stor25[arg1].field_0):
                        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                            revert with 0, 34
                        if uint255(stor25[arg1].field_1):
                            if 31 < uint255(stor25[arg1].field_1):
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor25[arg1].field_1 % 128:
                            if 31 < stor25[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                                idx = ceil32(uint255(stor24.length.field_1)) + 160
                                s = 0
                                while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                    if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                        mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
                if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                    mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
            if not uint255(stor24.length.field_1):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
                mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
                return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
                if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                        _10911 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10911)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10911)]
                        if ceil32(_10911) > _10911:
                            mem[_10911 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10911) + 32], 
                    _10912 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10912)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10912)]
                    if ceil32(_10912) > _10912:
                        mem[_10912 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10912) + 32], 
                mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10913 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10913)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10913)]
                    if ceil32(_10913) > _10913:
                        mem[_10913 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10913) + 32], 
                _10914 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10914)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10914)]
                if ceil32(_10914) > _10914:
                    mem[_10914 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10914) + 32], 
            mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10915 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10915)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10915)]
                    if ceil32(_10915) > _10915:
                        mem[_10915 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10915) + 32], 
                _10916 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10916)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10916)]
                if ceil32(_10916) > _10916:
                    mem[_10916 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10916) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10917 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10917)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10917)]
                if ceil32(_10917) > _10917:
                    mem[_10917 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10917) + 32], 
            _10918 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10918)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10918)]
            if ceil32(_10918) > _10918:
                mem[_10918 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10918) + 32], 
        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor25[arg1].field_1 % 128 > 0:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 < uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 < stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224 len ceil32(uint255(stor25[arg1].field_1))] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]
                if ceil32(uint255(stor25[arg1].field_1)) > uint255(stor25[arg1].field_1):
                    mem[uint255(stor25[arg1].field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(uint255(stor25[arg1].field_1)) + 224] = 0
                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(uint255(stor25[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor25[arg1].field_1))]), 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 < uint255(stor25[arg1].field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 < stor25[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224 len ceil32(stor25[arg1].field_1 % 128)] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]
            if ceil32(stor25[arg1].field_1 % 128) > stor25[arg1].field_1 % 128:
                mem[stor25[arg1].field_1 % 128 + ceil32(uint255(stor24.length.field_1)) + ceil32(stor25[arg1].field_1 % 128) + 224] = 0
            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)], mem[ceil32(uint255(stor24.length.field_1)) + (2 * ceil32(stor25[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor25[arg1].field_1 % 128)]), 
        if not uint255(stor24.length.field_1):
            return ''
        if not arg1:
            mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
            return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    _10919 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10919)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10919)]
                    if ceil32(_10919) > _10919:
                        mem[_10919 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10919) + 32], 
                _10920 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10920)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10920)]
                if ceil32(_10920) > _10920:
                    mem[_10920 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10920) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10921 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10921)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10921)]
                if ceil32(_10921) > _10921:
                    mem[_10921 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10921) + 32], 
            _10922 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10922)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10922)]
            if ceil32(_10922) > _10922:
                mem[_10922 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10922) + 32], 
        mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                _10923 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10923)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10923)]
                if ceil32(_10923) > _10923:
                    mem[_10923 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10923) + 32], 
            _10924 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10924)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10924)]
            if ceil32(_10924) > _10924:
                mem[_10924 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10924) + 32], 
        mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            _10925 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10925)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10925)]
            if ceil32(_10925) > _10925:
                mem[_10925 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10925) + 32], 
        _10926 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_10926)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_10926)]
        if ceil32(_10926) > _10926:
            mem[_10926 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_10926) + 32], 
    mem[128] = uint256(stor24.field_0)
    idx = 128
    s = 0
    while stor24.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = uint256(stor24[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 25
    if bool(stor25[arg1].field_0):
        if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
            revert with 0, 34
        if uint255(stor25[arg1].field_1) > 0:
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if bool(stor25[arg1].field_0):
                    if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                        revert with 0, 34
                    if uint255(stor25[arg1].field_1):
                        if 31 >= uint255(stor25[arg1].field_1):
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor25[arg1].field_1 % 128:
                        if 31 >= stor25[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                            idx = ceil32(uint255(stor24.length.field_1)) + 160
                            s = 0
                            while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 >= uint255(stor25[arg1].field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 >= stor25[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
        if not uint255(stor24.length.field_1):
            return ''
        if not arg1:
            mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
            mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
                return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
            return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
            if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
                mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                    _12319 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12319)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12319)]
                    if ceil32(_12319) > _12319:
                        mem[_12319 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12319) + 32], 
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12320 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12320)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12320)]
                if ceil32(_12320) > _12320:
                    mem[_12320 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12320) + 32], 
            mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12321 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12321)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12321)]
                if ceil32(_12321) > _12321:
                    mem[_12321 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12321) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12322 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12322)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12322)]
            if ceil32(_12322) > _12322:
                mem[_12322 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12322) + 32], 
        mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12323 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12323)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12323)]
                if ceil32(_12323) > _12323:
                    mem[_12323 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12323) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12324 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12324)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12324)]
            if ceil32(_12324) > _12324:
                mem[_12324 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12324) + 32], 
        mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12325 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12325)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12325)]
            if ceil32(_12325) > _12325:
                mem[_12325 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12325) + 32], 
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        _12326 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12326)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12326)]
        if ceil32(_12326) > _12326:
            mem[_12326 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12326) + 32], 
    if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if stor25[arg1].field_1 % 128 > 0:
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if bool(stor25[arg1].field_0):
                if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                    revert with 0, 34
                if uint255(stor25[arg1].field_1):
                    if 31 >= uint255(stor25[arg1].field_1):
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor25[arg1].field_1 % 128:
                    if 31 >= stor25[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                        idx = ceil32(uint255(stor24.length.field_1)) + 160
                        s = 0
                        while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=2 * Mask(256, -1, uint255(stor25[arg1].field_1)), data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(uint255(stor25[arg1].field_1))]), 
        if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor25[arg1].field_0):
            if bool(stor25[arg1].field_0) == uint255(stor25[arg1].field_1) < 32:
                revert with 0, 34
            if uint255(stor25[arg1].field_1):
                if 31 >= uint255(stor25[arg1].field_1):
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                    s = 0
                    while ceil32(uint255(stor24.length.field_1)) + uint255(stor25[arg1].field_1) + 128 > idx:
                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor25[arg1].field_0) == stor25[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor25[arg1].field_1 % 128:
                if 31 >= stor25[arg1].field_1 % 128:
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = 256 * Mask(248, 0, stor25[arg1].field_8)
                else:
                    mem[ceil32(uint255(stor24.length.field_1)) + 160] = uint256(stor25[arg1].field_0)
                    idx = ceil32(uint255(stor24.length.field_1)) + 160
                    s = 0
                    while ceil32(uint255(stor24.length.field_1)) + stor25[arg1].field_1 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor25[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=stor25[arg1].field_0 % 128, data=mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(stor25[arg1].field_1 % 128)]), 
    if not uint255(stor24.length.field_1):
        return ''
    if not arg1:
        mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 225] = 32
        mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257] = mem[ceil32(uint255(stor24.length.field_1)) + 192]
        mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])] = mem[ceil32(uint255(stor24.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) <= mem[ceil32(uint255(stor24.length.field_1)) + 192]:
            return Array(len=mem[ceil32(uint255(stor24.length.field_1)) + 192], data=mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192])]), 
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 192] + ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 289] = 0
        return 32, mem[ceil32(uint255(stor24.length.field_1)) + uint255(stor24.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(uint255(stor24.length.field_1)) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
        if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
            mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
                mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
                _12327 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12327)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12327)]
                if ceil32(_12327) > _12327:
                    mem[_12327 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12327) + 32], 
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12328 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12328)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12328)]
            if ceil32(_12328) > _12328:
                mem[_12328 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12328) + 32], 
        mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12329 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12329)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12329)]
            if ceil32(_12329) > _12329:
                mem[_12329 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12329) + 32], 
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        _12330 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12330)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12330)]
        if ceil32(_12330) > _12330:
            mem[_12330 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12330) + 32], 
    mem[ceil32(uint255(stor24.length.field_1)) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            revert with 0, 50
        mem[t + ceil32(uint255(stor24.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor24.length.field_1))] = mem[128 len ceil32(uint255(stor24.length.field_1))]
    if ceil32(uint255(stor24.length.field_1)) <= uint255(stor24.length.field_1):
        mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
            mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
            _12331 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12331)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12331)]
            if ceil32(_12331) > _12331:
                mem[_12331 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12331) + 32], 
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        _12332 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12332)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12332)]
        if ceil32(_12332) > _12332:
            mem[_12332 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12332) + 32], 
    mem[uint255(stor24.length.field_1) + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192] = 0
    mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])] = mem[ceil32(uint255(stor24.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128])]
    if ceil32(mem[ceil32(uint255(stor24.length.field_1)) + 128]) <= mem[ceil32(uint255(stor24.length.field_1)) + 128]:
        mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
        _12333 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12333)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12333)]
        if ceil32(_12333) > _12333:
            mem[_12333 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12333) + 32], 
    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 0
    mem[64] = mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192
    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 192] = 32
    _12334 = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256 len ceil32(_12334)] = mem[ceil32(uint255(stor24.length.field_1)) + ceil32(s) + 192 len ceil32(_12334)]
    if ceil32(_12334) > _12334:
        mem[_12334 + mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 256] = 0
    return 32, mem[mem[ceil32(uint255(stor24.length.field_1)) + 128] + ceil32(uint255(stor24.length.field_1)) + ceil32(s) + uint255(stor24.length.field_1) + 224 len ceil32(_12334) + 32], 
}



}
