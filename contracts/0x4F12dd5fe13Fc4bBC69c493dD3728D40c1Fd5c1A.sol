contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1, bytes32[] arg2)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const TRANSFER_ROLE = 0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


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
address stor12; offset 8
uint256 maxTotalSupply;
uint256 nextTokenId;
uint256 sub_e88fbd41;
array of struct sub_fd598550;
mapping of uint256 sub_1edab081;
uint256 stor19;
uint256 royaltyBps;
uint256 feeBps;
uint8 sub_8423df79;
address stor22; offset 8
address sub_5b019b76Address;
array of struct stor24;
array of struct stor25;
mapping of struct stor26;
mapping of uint8 stor56303404950152965302615529049884071363929349766701979926234883952044568548396;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1df952db(?) {
    return sub_fd598550.length
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

function feeBps() {
    return feeBps
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

function sub_5b019b76(?) {
    return sub_5b019b76Address
}

function paused() {
    return bool(uint8(stor12.field_0))
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
           uint256(sub_fd598550[arg1].field_1536),
           address(sub_fd598550[arg1].field_1792)
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == address(stor12.field_8))
}

function setMaxTotalSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    maxTotalSupply = arg1
    emit 0xf8cbdbee: arg1
}

function sub_1c908d98(?) {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    sub_5b019b76Address = address(cd[4])
}

function sub_8ba448c2(?) {
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    sub_8423df79 = uint8(bool(cd[4]))
    emit 0xfb4ba02c: bool(cd[4])
}

function setFeeBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    if arg1 > 10000:
        revert with 0, 'bps <= 10000'
    feeBps = arg1
    emit FeeUpdated(arg1);
}

function setRoyaltyBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    if arg1 > 10000:
        revert with 0, 'bps <= 10000'
    royaltyBps = arg1
    emit 0x244ea8d7: arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor22)
    staticcall stor22.getRoyaltyTreasury(address arg1) with:
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

function sub_5da53d58(?) {
    if not sub_fd598550.length:
        revert with 0, 'no public mint condition'
    idx = sub_fd598550.length
    while idx:
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= sub_fd598550.length:
            revert with 0, 50
        mem[0] = 17
        if block.timestamp < uint256(sub_fd598550[idx - 1].field_0):
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        if idx < 1:
            revert with 0, 17
        return (idx - 1)
    revert with 0, 'no active mint condition'
}

function sub_b7cdd0bc(?) {
    require calldata.size - 4 >= 32
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0, 'only minter'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only minter'
    if nextTokenId > !cd[4]:
        revert with 0, 17
    if nextTokenId + cd[4] > maxTotalSupply:
        revert with 0, 'exceed maxTotalSupply'
    if nextTokenId > !cd[4]:
        revert with 0, 17
    nextTokenId += cd[4]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(stor12.field_8) != msg.sender:
        if arg1 == msg.sender:
            revert with 0, 'ERC721: approve to caller'
    else:
        if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERC721: approve to caller'
    if address(stor12.field_8) != msg.sender:
        stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        stor7[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
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
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(stor12.field_8) != msg.sender:
        if ownerOf[arg2] != msg.sender:
            if address(stor12.field_8) != msg.sender:
                if not stor7[stor4[arg2]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
            else:
                if not stor7[stor4[arg2]][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'ERC721: approve caller is not owner nor approved for all'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ownerOf[arg2]:
            if address(stor12.field_8) != msg.sender:
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
    if address(stor12.field_8) != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if address(stor12.field_8) != msg.sender:
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
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
    else:
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor25.length = 0
            idx = 0
            while (uint255(stor25.length) * 0.5) + 31 / 32 > idx:
                uint256(stor25[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor25.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor25[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor25.length) * 0.5) + 31 / 32 > idx:
                uint256(stor25[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor25.length) == stor25.length.field_1 % 128 < 32:
            revert with 0, 34
        if not arg1.length:
            stor25.length = 0
            idx = 0
            while stor25.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor25[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            stor25.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                uint256(stor25[s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor25.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor25[idx].field_0) = 0
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
    require ext_code.size(stor22)
    staticcall stor22.0xa217fddf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor22)
    if address(stor12.field_8) != msg.sender:
        staticcall stor22.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], msg.sender
    else:
        staticcall stor22.0x91d14854 with:
                gas gas_remaining wei
               args ext_call.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'not protocol admin'
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor24.length = 0
            idx = 0
            while (uint255(stor24.length) * 0.5) + 31 / 32 > idx:
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
            while (uint255(stor24.length) * 0.5) + 31 / 32 > idx:
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
}

function sub_4ce40a32(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(stor12.field_8) != msg.sender:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
            revert with 0, 'only minter'
    else:
        if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only minter'
    if nextTokenId > !('cd', 4).length:
        revert with 0, 17
    if nextTokenId + ('cd', 4).length > maxTotalSupply:
        revert with 0, 'exceed maxTotalSupply'
    idx = 0
    s = nextTokenId
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 67
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
        mem[32] = 26
        if bool(stor26[s].field_0):
            if bool(stor26[s].field_0) == uint255(uint256(stor26[s].field_0)) * 0.5 < 32:
                revert with 0, 34
            mem[0] = sha3(s, 26)
            if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                uint256(stor26[s].field_0) = 0
                t = sha3(sha3(s, 26))
                while sha3(sha3(s, 26)) + ((uint255(uint256(stor26[s].field_0)) * 0.5) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            else:
                uint256(stor26[s].field_0) = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                t = sha3(sha3(s, 26))
                u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                while cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 > u:
                    uint256(stor[t]) = cd[u]
                    t = t + 1
                    u = u + 32
                    continue 
                u = t
                while sha3(sha3(s, 26)) + ((uint255(uint256(stor26[s].field_0)) * 0.5) + 31 / 32) > u:
                    uint256(stor[u]) = 0
                    u = u + 1
                    continue 
        else:
            if bool(stor26[s].field_0) == stor26[s].field_1 % 128 < 32:
                revert with 0, 34
            mem[0] = sha3(s, 26)
            if not cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]:
                uint256(stor26[s].field_0) = 0
                t = sha3(sha3(s, 26))
                while sha3(sha3(s, 26)) + (stor26[s].field_1 % 128 + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            else:
                uint256(stor26[s].field_0) = (2 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]) + 1
                t = sha3(sha3(s, 26))
                u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68
                while cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] + 68 > u:
                    uint256(stor[t]) = cd[u]
                    t = t + 1
                    u = u + 32
                    continue 
                u = t
                while sha3(sha3(s, 26)) + (stor26[s].field_1 % 128 + 31 / 32) > u:
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                        mem[idx + 32] = uint256(stor3[s].field_256)
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
                        mem[idx + 32] = uint256(stor3[s].field_256)
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
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor24.length):
            if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor24.length):
                if 31 < uint255(stor24.length) * 0.5:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor24.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor24[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
        else:
            if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor24.length.field_1 % 128:
                if 31 < stor24.length.field_1 % 128:
                    mem[128] = uint256(stor24.field_0)
                    idx = 128
                    s = 0
                    while stor24.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor24[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
        mem[ceil32(uint255(stor24.length) * 0.5) + 192 len ceil32(uint255(stor24.length) * 0.5)] = mem[128 len ceil32(uint255(stor24.length) * 0.5)]
        if ceil32(uint255(stor24.length) * 0.5) > uint255(stor24.length) * 0.5:
            mem[(uint255(stor24.length) * 0.5) + ceil32(uint255(stor24.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor24.length), data=mem[128 len ceil32(uint255(stor24.length) * 0.5)], mem[(2 * ceil32(uint255(stor24.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor24.length) * 0.5)]), 
    if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor24.length):
        if bool(stor24.length) == uint255(stor24.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor24.length):
            if 31 < uint255(stor24.length) * 0.5:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while (uint255(stor24.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor24[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
    else:
        if bool(stor24.length) == stor24.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor24.length.field_1 % 128:
            if 31 < stor24.length.field_1 % 128:
                mem[128] = uint256(stor24.field_0)
                idx = 128
                s = 0
                while stor24.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor24[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor24.length.field_8)
    mem[ceil32(stor24.length.field_1 % 128) + 192 len ceil32(stor24.length.field_1 % 128)] = mem[128 len ceil32(stor24.length.field_1 % 128)]
    if ceil32(stor24.length.field_1 % 128) > stor24.length.field_1 % 128:
        mem[stor24.length.field_1 % 128 + ceil32(stor24.length.field_1 % 128) + 192] = 0
    return Array(len=stor24.length % 128, data=mem[128 len ceil32(stor24.length.field_1 % 128)], mem[(2 * ceil32(stor24.length.field_1 % 128)) + 192 len 2 * ceil32(stor24.length.field_1 % 128)]), 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if address(stor12.field_8) != msg.sender:
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
        if address(stor12.field_8) != msg.sender:
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
    if address(stor12.field_8) != msg.sender:
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
    if uint8(stor12.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not stor7C7A[address(arg1)]:
                    if not stor7C7A[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'restricted to TRANSFER_ROLE holders'
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
    if address(stor12.field_8) != msg.sender:
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
        if address(stor12.field_8) != msg.sender:
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
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if address(stor12.field_8) != msg.sender:
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
    if uint8(stor12.field_0):
        revert with 0, 'ERC721Pausable: token transfer while paused'
    if sub_8423df79:
        if arg1:
            if arg2:
                if not stor7C7A[address(arg1)]:
                    if not stor7C7A[address(arg2)]:
                        revert with 0, 'restricted to TRANSFER_ROLE holders'
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
        if address(stor12.field_8) != msg.sender:
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

function sub_42813108(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (('cd', 4).length << 8) + 36 <= calldata.size
    if address(stor12.field_8) != msg.sender:
        mem[0] = msg.sender
        if not uint8(roleAdmin[address(msg.sender)].field_0):
            revert with 0, 'only module admin'
        if not ('cd', 4).length:
            revert with 0, 'needs a list of conditions'
        if not sub_fd598550.length:
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not s:
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _99 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_99] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_99 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_99 + 64] = 0
                    mem[_99 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_99 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_99 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_99 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_99 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                else:
                    if s >= cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 'startTimestamp must be in ascending order'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _111 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_111] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_111 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_111 + 64] = 0
                    mem[_111 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_111 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_111 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_111 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_111 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                sub_fd598550.length++
                mem[0] = 17
                uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
                uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
                uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
                uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
                uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
                uint256(sub_fd598550[sub_fd598550.length].field_1536) = cd[((256 * idx) + cd[4] + 228)]
                address(sub_fd598550[sub_fd598550.length].field_1792) = address(cd[((256 * idx) + cd[4] + 260)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = cd[((256 * idx) + cd[4] + 36)]
                continue 
            _83 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_fd598550.length
            mem[0] = 17
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
                mem[t + 192] = uint256(stor[s + sha3(mem[0]) + 6])
                mem[t + 224] = address(stor[s + sha3(mem[0]) + 7])
                idx = idx + 1
                s = s + 8
                t = t + 256
                continue 
            emit 0xd81786d9: mem[mem[64] len _83 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
        else:
            if stor19 > !sub_fd598550.length:
                revert with 0, 17
            stor19 += sub_fd598550.length
            sub_fd598550.length = 0
            mem[0] = 17
            idx = 0
            while 8 * sub_fd598550.length > idx:
                uint256(sub_fd598550[idx].field_0) = 0
                uint256(sub_fd598550[idx].field_256) = 0
                uint256(sub_fd598550[idx].field_512) = 0
                uint256(sub_fd598550[idx].field_768) = 0
                uint256(sub_fd598550[idx].field_1024) = 0
                uint256(sub_fd598550[idx].field_1280) = 0
                uint256(sub_fd598550[idx].field_1536) = 0
                address(sub_fd598550[idx].field_1792) = 0
                idx = idx + 8
                continue 
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not s:
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _199 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_199] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_199 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_199 + 64] = 0
                    mem[_199 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_199 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_199 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_199 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_199 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                else:
                    if s >= cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 'startTimestamp must be in ascending order'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _209 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_209] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_209 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_209 + 64] = 0
                    mem[_209 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_209 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_209 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_209 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_209 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                sub_fd598550.length++
                mem[0] = 17
                uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
                uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
                uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
                uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
                uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
                uint256(sub_fd598550[sub_fd598550.length].field_1536) = cd[((256 * idx) + cd[4] + 228)]
                address(sub_fd598550[sub_fd598550.length].field_1792) = address(cd[((256 * idx) + cd[4] + 260)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = cd[((256 * idx) + cd[4] + 36)]
                continue 
            _183 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_fd598550.length
            mem[0] = 17
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
                mem[t + 192] = uint256(stor[s + sha3(mem[0]) + 6])
                mem[t + 224] = address(stor[s + sha3(mem[0]) + 7])
                idx = idx + 1
                s = s + 8
                t = t + 256
                continue 
            emit 0xd81786d9: mem[mem[64] len _183 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
    else:
        mem[0] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        if not uint8(roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0, 'only module admin'
        if not ('cd', 4).length:
            revert with 0, 'needs a list of conditions'
        if not sub_fd598550.length:
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not s:
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _103 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_103] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_103 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_103 + 64] = 0
                    mem[_103 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_103 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_103 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_103 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_103 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                else:
                    if s >= cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 'startTimestamp must be in ascending order'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _114 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_114] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_114 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_114 + 64] = 0
                    mem[_114 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_114 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_114 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_114 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_114 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                sub_fd598550.length++
                mem[0] = 17
                uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
                uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
                uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
                uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
                uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
                uint256(sub_fd598550[sub_fd598550.length].field_1536) = cd[((256 * idx) + cd[4] + 228)]
                address(sub_fd598550[sub_fd598550.length].field_1792) = address(cd[((256 * idx) + cd[4] + 260)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = cd[((256 * idx) + cd[4] + 36)]
                continue 
            _84 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_fd598550.length
            mem[0] = 17
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
                mem[t + 192] = uint256(stor[s + sha3(mem[0]) + 6])
                mem[t + 224] = address(stor[s + sha3(mem[0]) + 7])
                idx = idx + 1
                s = s + 8
                t = t + 256
                continue 
            emit 0xd81786d9: mem[mem[64] len _84 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
        else:
            if stor19 > !sub_fd598550.length:
                revert with 0, 17
            stor19 += sub_fd598550.length
            sub_fd598550.length = 0
            mem[0] = 17
            idx = 0
            while 8 * sub_fd598550.length > idx:
                uint256(sub_fd598550[idx].field_0) = 0
                uint256(sub_fd598550[idx].field_256) = 0
                uint256(sub_fd598550[idx].field_512) = 0
                uint256(sub_fd598550[idx].field_768) = 0
                uint256(sub_fd598550[idx].field_1024) = 0
                uint256(sub_fd598550[idx].field_1280) = 0
                uint256(sub_fd598550[idx].field_1536) = 0
                address(sub_fd598550[idx].field_1792) = 0
                idx = idx + 8
                continue 
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not s:
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _202 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_202] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_202 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_202 + 64] = 0
                    mem[_202 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_202 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_202 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_202 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_202 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                else:
                    if s >= cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 'startTimestamp must be in ascending order'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 68)] <= 0:
                        revert with 0, 'max mint supply cannot be 0'
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if cd[((256 * idx) + cd[4] + 132)] <= 0:
                        revert with 0, 'quantity limit cannot be 0'
                    _211 = mem[64]
                    mem[64] = mem[64] + 256
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if block.timestamp > !cd[((256 * idx) + cd[4] + 36)]:
                        revert with 0, 17
                    mem[_211] = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[_211 + 32] = cd[((256 * idx) + cd[4] + 68)]
                    mem[_211 + 64] = 0
                    mem[_211 + 96] = cd[((256 * idx) + cd[4] + 132)]
                    mem[_211 + 128] = cd[((256 * idx) + cd[4] + 164)]
                    mem[_211 + 160] = cd[((256 * idx) + cd[4] + 196)]
                    mem[_211 + 192] = cd[((256 * idx) + cd[4] + 228)]
                    require cd[((256 * idx) + cd[4] + 260)] == address(cd[((256 * idx) + cd[4] + 260)])
                    mem[_211 + 224] = address(cd[((256 * idx) + cd[4] + 260)])
                sub_fd598550.length++
                mem[0] = 17
                uint256(sub_fd598550[sub_fd598550.length].field_0) = block.timestamp + cd[((256 * idx) + cd[4] + 36)]
                uint256(sub_fd598550[sub_fd598550.length].field_256) = cd[((256 * idx) + cd[4] + 68)]
                uint256(sub_fd598550[sub_fd598550.length].field_512) = 0
                uint256(sub_fd598550[sub_fd598550.length].field_768) = cd[((256 * idx) + cd[4] + 132)]
                uint256(sub_fd598550[sub_fd598550.length].field_1024) = cd[((256 * idx) + cd[4] + 164)]
                uint256(sub_fd598550[sub_fd598550.length].field_1280) = cd[((256 * idx) + cd[4] + 196)]
                uint256(sub_fd598550[sub_fd598550.length].field_1536) = cd[((256 * idx) + cd[4] + 228)]
                address(sub_fd598550[sub_fd598550.length].field_1792) = address(cd[((256 * idx) + cd[4] + 260)])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = cd[((256 * idx) + cd[4] + 36)]
                continue 
            _184 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = sub_fd598550.length
            mem[0] = 17
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
                mem[t + 192] = uint256(stor[s + sha3(mem[0]) + 6])
                mem[t + 224] = address(stor[s + sha3(mem[0]) + 7])
                idx = idx + 1
                s = s + 8
                t = t + 256
                continue 
            emit 0xd81786d9: mem[mem[64] len _184 + Mask(248, 0, sub_fd598550.length) + -mem[64] + 64]
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor12.field_8) != msg.sender:
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
                                            if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                    if uint8(stor12.field_0):
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
                                                                if uint8(stor12.field_0):
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
                                                                if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                                    if uint8(stor12.field_0):
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
                                                                    if uint8(stor12.field_0):
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
                                            if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                    if uint8(stor12.field_0):
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
                                                                if uint8(stor12.field_0):
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
                                                                if uint8(stor12.field_0):
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
                                                        if uint8(stor12.field_0):
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
                                                                    if uint8(stor12.field_0):
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
                                                                    if uint8(stor12.field_0):
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
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor25.length):
            if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor25.length):
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor26[arg1].field_0):
                                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                    if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor26[arg1].field_1 % 128:
                                    if 31 < stor26[arg1].field_1 % 128:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                            if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                        if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                            mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                    if not Mask(256, -1, stor25.length):
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                        return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
                    mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
                    if s:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                    if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                        mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                        mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                if not Mask(256, -1, stor25.length):
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                    mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor25.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor25.length.field_8)
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor26[arg1].field_0):
                                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                    if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor26[arg1].field_1 % 128:
                                    if 31 < stor26[arg1].field_1 % 128:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                            if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                        if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                            mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128 > 0:
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor26[arg1].field_0):
                                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                    if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor26[arg1].field_1 % 128:
                                    if 31 < stor26[arg1].field_1 % 128:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                            if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                        if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                            mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                if not Mask(256, -1, stor25.length):
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
            else:
                mem[128] = uint256(stor25.field_0)
                idx = 128
                s = 0
                while (uint255(stor25.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor25[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor26[arg1].field_0):
                                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                    else:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor26[arg1].field_1 % 128:
                                    if 31 >= stor26[arg1].field_1 % 128:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                    else:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                else:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 >= stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                else:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    if not Mask(256, -1, stor25.length):
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        var42001 = 32
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                        return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128 > 0:
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor26[arg1].field_0):
                                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                    else:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor26[arg1].field_1 % 128:
                                    if 31 >= stor26[arg1].field_1 % 128:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                    else:
                                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                        s = 0
                                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                else:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 >= stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                                else:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    if not Mask(256, -1, stor25.length):
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                        mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                        if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                        return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
            ('param', 'arg1')
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
            mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
            if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
        if bool(stor25.length) == stor25.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor25.length.field_1 % 128:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                if not Mask(256, -1, stor25.length):
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
                mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                    mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor26[arg1].field_1 % 128 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                    mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not Mask(256, -1, stor25.length):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
            if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
        if 31 >= stor25.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor25.length.field_8)
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(uint255(stor25.length) * 0.5) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(uint255(stor25.length) * 0.5) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not Mask(256, -1, stor25.length):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
            if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
        mem[128] = uint256(stor25.field_0)
        idx = 128
        s = 0
        while stor25.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = uint256(stor25[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 >= stor26[arg1].field_1 % 128:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(uint255(stor25.length) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 >= stor26[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
            if not Mask(256, -1, stor25.length):
                return ''
            if not arg1:
                mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                var43001 = 32
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
                mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
            if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
                mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
                mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor26[arg1].field_1 % 128 > 0:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 >= stor26[arg1].field_1 % 128:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(uint255(stor25.length) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor25.length) * 0.5) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 >= stor26[arg1].field_1 % 128:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(uint255(stor25.length) * 0.5) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(uint255(stor25.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor25.length) * 0.5) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
        if not Mask(256, -1, stor25.length):
            return ''
        if not arg1:
            mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
            mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257] = mem[ceil32(uint255(stor25.length) * 0.5) + 192]
            mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])] = mem[ceil32(uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor25.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + 192], data=mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor25.length) * 0.5) + 192] + ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor25.length) * 0.5) + (uint255(stor25.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor25.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor25.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor25.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor25.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
        if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
            mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])] = mem[ceil32(uint255(stor25.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160])]), 
        mem[mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor25.length) * 0.5) + 128] + ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + (uint255(stor25.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor25.length) * 0.5) + ceil32(s) + 160]) + 32], 
    if bool(stor25.length) == stor25.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor25.length.field_1 % 128
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor25.length):
            mem[0] = arg1
            mem[32] = 26
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(stor25.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(stor25.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                if not stor25.length.field_1 % 128:
                    return ''
                if not arg1:
                    mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                    return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
                mem[ceil32(stor25.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                    if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                            _10927 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10927)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10927)]
                            if ceil32(_10927) > _10927:
                                mem[_10927 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10927) + 32], 
                        _10928 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10928)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10928)]
                        if ceil32(_10928) > _10928:
                            mem[_10928 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10928) + 32], 
                    mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10929 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10929)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10929)]
                        if ceil32(_10929) > _10929:
                            mem[_10929 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10929) + 32], 
                    _10930 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10930)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10930)]
                    if ceil32(_10930) > _10930:
                        mem[_10930 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10930) + 32], 
                mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10931 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10931)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10931)]
                        if ceil32(_10931) > _10931:
                            mem[_10931 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10931) + 32], 
                    _10932 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10932)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10932)]
                    if ceil32(_10932) > _10932:
                        mem[_10932 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10932) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10933 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10933)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10933)]
                    if ceil32(_10933) > _10933:
                        mem[_10933 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10933) + 32], 
                _10934 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10934)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10934)]
                if ceil32(_10934) > _10934:
                    mem[_10934 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10934) + 32], 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor26[arg1].field_1 % 128 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                    mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not stor25.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
            mem[ceil32(stor25.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10935 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10935)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10935)]
                        if ceil32(_10935) > _10935:
                            mem[_10935 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10935) + 32], 
                    _10936 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10936)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10936)]
                    if ceil32(_10936) > _10936:
                        mem[_10936 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10936) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10937 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10937)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10937)]
                    if ceil32(_10937) > _10937:
                        mem[_10937 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10937) + 32], 
                _10938 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10938)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10938)]
                if ceil32(_10938) > _10938:
                    mem[_10938 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10938) + 32], 
            mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10939 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10939)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10939)]
                    if ceil32(_10939) > _10939:
                        mem[_10939 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10939) + 32], 
                _10940 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10940)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10940)]
                if ceil32(_10940) > _10940:
                    mem[_10940 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10940) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10941 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10941)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10941)]
                if ceil32(_10941) > _10941:
                    mem[_10941 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10941) + 32], 
            _10942 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10942)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10942)]
            if ceil32(_10942) > _10942:
                mem[_10942 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10942) + 32], 
        if 31 >= uint255(stor25.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor25.length.field_8)
            mem[0] = arg1
            mem[32] = 26
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor26[arg1].field_0):
                            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                                if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(stor25.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor26[arg1].field_1 % 128:
                                if 31 < stor26[arg1].field_1 % 128:
                                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                    idx = ceil32(stor25.length.field_1 % 128) + 160
                                    s = 0
                                    while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                        if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                    if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                        mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                    return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
                if not stor25.length.field_1 % 128:
                    return ''
                if not arg1:
                    mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                    mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                    return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
                mem[ceil32(stor25.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                    if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                            _10943 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10943)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10943)]
                            if ceil32(_10943) > _10943:
                                mem[_10943 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10943) + 32], 
                        _10944 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10944)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10944)]
                        if ceil32(_10944) > _10944:
                            mem[_10944 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10944) + 32], 
                    mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10945 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10945)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10945)]
                        if ceil32(_10945) > _10945:
                            mem[_10945 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10945) + 32], 
                    _10946 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10946)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10946)]
                    if ceil32(_10946) > _10946:
                        mem[_10946 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10946) + 32], 
                mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10947 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10947)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10947)]
                        if ceil32(_10947) > _10947:
                            mem[_10947 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10947) + 32], 
                    _10948 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10948)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10948)]
                    if ceil32(_10948) > _10948:
                        mem[_10948 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10948) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10949 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10949)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10949)]
                    if ceil32(_10949) > _10949:
                        mem[_10949 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10949) + 32], 
                _10950 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10950)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10950)]
                if ceil32(_10950) > _10950:
                    mem[_10950 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10950) + 32], 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor26[arg1].field_1 % 128 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                    mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not stor25.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
            mem[ceil32(stor25.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10951 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10951)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10951)]
                        if ceil32(_10951) > _10951:
                            mem[_10951 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10951) + 32], 
                    _10952 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10952)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10952)]
                    if ceil32(_10952) > _10952:
                        mem[_10952 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10952) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10953 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10953)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10953)]
                    if ceil32(_10953) > _10953:
                        mem[_10953 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10953) + 32], 
                _10954 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10954)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10954)]
                if ceil32(_10954) > _10954:
                    mem[_10954 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10954) + 32], 
            mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10955 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10955)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10955)]
                    if ceil32(_10955) > _10955:
                        mem[_10955 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10955) + 32], 
                _10956 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10956)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10956)]
                if ceil32(_10956) > _10956:
                    mem[_10956 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10956) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10957 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10957)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10957)]
                if ceil32(_10957) > _10957:
                    mem[_10957 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10957) + 32], 
            _10958 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10958)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10958)]
            if ceil32(_10958) > _10958:
                mem[_10958 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10958) + 32], 
        mem[128] = uint256(stor25.field_0)
        idx = 128
        s = 0
        while (uint255(stor25.length) * 0.5) + 96 > idx:
            mem[idx + 32] = uint256(stor25[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = arg1
        mem[32] = 26
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 >= stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                            else:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 >= stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
            if not stor25.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                var43001 = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
            mem[ceil32(stor25.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _12335 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12335)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12335)]
                        if ceil32(_12335) > _12335:
                            mem[_12335 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12335) + 32], 
                    _12336 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12336)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12336)]
                    if ceil32(_12336) > _12336:
                        mem[_12336 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12336) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _12337 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12337)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12337)]
                    if ceil32(_12337) > _12337:
                        mem[_12337 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12337) + 32], 
                _12338 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12338)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12338)]
                if ceil32(_12338) > _12338:
                    mem[_12338 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12338) + 32], 
            mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _12339 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12339)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12339)]
                    if ceil32(_12339) > _12339:
                        mem[_12339 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12339) + 32], 
                _12340 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12340)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12340)]
                if ceil32(_12340) > _12340:
                    mem[_12340 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12340) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12341 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12341)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12341)]
                if ceil32(_12341) > _12341:
                    mem[_12341 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12341) + 32], 
            _12342 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12342)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12342)]
            if ceil32(_12342) > _12342:
                mem[_12342 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12342) + 32], 
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor26[arg1].field_1 % 128 > 0:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 >= stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 >= stor26[arg1].field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
        if not stor25.length.field_1 % 128:
            return ''
        if not arg1:
            mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
        mem[ceil32(stor25.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _12343 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12343)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12343)]
                    if ceil32(_12343) > _12343:
                        mem[_12343 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12343) + 32], 
                _12344 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12344)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12344)]
                if ceil32(_12344) > _12344:
                    mem[_12344 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12344) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12345 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12345)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12345)]
                if ceil32(_12345) > _12345:
                    mem[_12345 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12345) + 32], 
            _12346 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12346)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12346)]
            if ceil32(_12346) > _12346:
                mem[_12346 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12346) + 32], 
        mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12347 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12347)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12347)]
                if ceil32(_12347) > _12347:
                    mem[_12347 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12347) + 32], 
            _12348 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12348)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12348)]
            if ceil32(_12348) > _12348:
                mem[_12348 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12348) + 32], 
        mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _12349 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12349)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12349)]
            if ceil32(_12349) > _12349:
                mem[_12349 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12349) + 32], 
        _12350 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12350)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12350)]
        if ceil32(_12350) > _12350:
            mem[_12350 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12350) + 32], 
    if bool(stor25.length) == stor25.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor25.length.field_1 % 128:
        mem[0] = arg1
        mem[32] = 26
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                    mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not stor25.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
            mem[ceil32(stor25.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10959 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10959)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10959)]
                        if ceil32(_10959) > _10959:
                            mem[_10959 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10959) + 32], 
                    _10960 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10960)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10960)]
                    if ceil32(_10960) > _10960:
                        mem[_10960 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10960) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10961 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10961)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10961)]
                    if ceil32(_10961) > _10961:
                        mem[_10961 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10961) + 32], 
                _10962 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10962)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10962)]
                if ceil32(_10962) > _10962:
                    mem[_10962 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10962) + 32], 
            mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10963 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10963)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10963)]
                    if ceil32(_10963) > _10963:
                        mem[_10963 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10963) + 32], 
                _10964 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10964)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10964)]
                if ceil32(_10964) > _10964:
                    mem[_10964 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10964) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10965 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10965)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10965)]
                if ceil32(_10965) > _10965:
                    mem[_10965 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10965) + 32], 
            _10966 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10966)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10966)]
            if ceil32(_10966) > _10966:
                mem[_10966 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10966) + 32], 
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor26[arg1].field_1 % 128 > 0:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 < stor26[arg1].field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
            if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
        if not stor25.length.field_1 % 128:
            return ''
        if not arg1:
            mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
        mem[ceil32(stor25.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10967 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10967)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10967)]
                    if ceil32(_10967) > _10967:
                        mem[_10967 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10967) + 32], 
                _10968 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10968)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10968)]
                if ceil32(_10968) > _10968:
                    mem[_10968 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10968) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10969 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10969)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10969)]
                if ceil32(_10969) > _10969:
                    mem[_10969 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10969) + 32], 
            _10970 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10970)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10970)]
            if ceil32(_10970) > _10970:
                mem[_10970 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10970) + 32], 
        mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10971 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10971)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10971)]
                if ceil32(_10971) > _10971:
                    mem[_10971 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10971) + 32], 
            _10972 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10972)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10972)]
            if ceil32(_10972) > _10972:
                mem[_10972 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10972) + 32], 
        mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _10973 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10973)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10973)]
            if ceil32(_10973) > _10973:
                mem[_10973 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10973) + 32], 
        _10974 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10974)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10974)]
        if ceil32(_10974) > _10974:
            mem[_10974 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10974) + 32], 
    if 31 >= stor25.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor25.length.field_8)
        mem[0] = arg1
        mem[32] = 26
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26[arg1].field_0):
                        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor26[arg1].field_0)):
                            if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor26[arg1].field_1 % 128:
                            if 31 < stor26[arg1].field_1 % 128:
                                mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                                idx = ceil32(stor25.length.field_1 % 128) + 160
                                s = 0
                                while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                    if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
                if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                    mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
                return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
            if not stor25.length.field_1 % 128:
                return ''
            if not arg1:
                mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
                mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
                return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
            mem[ceil32(stor25.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
                if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                        _10975 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10975)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10975)]
                        if ceil32(_10975) > _10975:
                            mem[_10975 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10975) + 32], 
                    _10976 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10976)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10976)]
                    if ceil32(_10976) > _10976:
                        mem[_10976 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10976) + 32], 
                mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10977 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10977)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10977)]
                    if ceil32(_10977) > _10977:
                        mem[_10977 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10977) + 32], 
                _10978 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10978)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10978)]
                if ceil32(_10978) > _10978:
                    mem[_10978 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10978) + 32], 
            mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10979 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10979)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10979)]
                    if ceil32(_10979) > _10979:
                        mem[_10979 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10979) + 32], 
                _10980 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10980)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10980)]
                if ceil32(_10980) > _10980:
                    mem[_10980 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10980) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10981 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10981)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10981)]
                if ceil32(_10981) > _10981:
                    mem[_10981 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10981) + 32], 
            _10982 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10982)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10982)]
            if ceil32(_10982) > _10982:
                mem[_10982 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10982) + 32], 
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor26[arg1].field_1 % 128 > 0:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 < stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]
                if ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) > uint255(uint256(stor26[arg1].field_0)) * 0.5:
                    mem[(uint255(uint256(stor26[arg1].field_0)) * 0.5) + ceil32(stor25.length.field_1 % 128) + ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 < uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 < stor26[arg1].field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224 len ceil32(stor26[arg1].field_1 % 128)] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]
            if ceil32(stor26[arg1].field_1 % 128) > stor26[arg1].field_1 % 128:
                mem[stor26[arg1].field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(stor26[arg1].field_1 % 128) + 224] = 0
            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)], mem[ceil32(stor25.length.field_1 % 128) + (2 * ceil32(stor26[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor26[arg1].field_1 % 128)]), 
        if not stor25.length.field_1 % 128:
            return ''
        if not arg1:
            mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
        mem[ceil32(stor25.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _10983 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10983)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10983)]
                    if ceil32(_10983) > _10983:
                        mem[_10983 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10983) + 32], 
                _10984 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10984)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10984)]
                if ceil32(_10984) > _10984:
                    mem[_10984 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10984) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10985 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10985)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10985)]
                if ceil32(_10985) > _10985:
                    mem[_10985 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10985) + 32], 
            _10986 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10986)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10986)]
            if ceil32(_10986) > _10986:
                mem[_10986 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10986) + 32], 
        mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _10987 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10987)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10987)]
                if ceil32(_10987) > _10987:
                    mem[_10987 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10987) + 32], 
            _10988 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10988)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10988)]
            if ceil32(_10988) > _10988:
                mem[_10988 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10988) + 32], 
        mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _10989 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10989)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10989)]
            if ceil32(_10989) > _10989:
                mem[_10989 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10989) + 32], 
        _10990 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_10990)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_10990)]
        if ceil32(_10990) > _10990:
            mem[_10990 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_10990) + 32], 
    mem[128] = uint256(stor25.field_0)
    idx = 128
    s = 0
    while stor25.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = uint256(stor25[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = arg1
    mem[32] = 26
    if bool(stor26[arg1].field_0):
        if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if uint255(uint256(stor26[arg1].field_0)) * 0.5 > 0:
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26[arg1].field_0):
                    if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor26[arg1].field_0)):
                        if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor26[arg1].field_1 % 128:
                        if 31 >= stor26[arg1].field_1 % 128:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                        else:
                            mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                            idx = ceil32(stor25.length.field_1 % 128) + 160
                            s = 0
                            while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 >= stor26[arg1].field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
        if not stor25.length.field_1 % 128:
            return ''
        if not arg1:
            mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            var44001 = 32
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
            mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
                mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
            return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
        mem[ceil32(stor25.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
            if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
                mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                    _12351 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12351)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12351)]
                    if ceil32(_12351) > _12351:
                        mem[_12351 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12351) + 32], 
                _12352 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12352)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12352)]
                if ceil32(_12352) > _12352:
                    mem[_12352 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12352) + 32], 
            mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12353 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12353)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12353)]
                if ceil32(_12353) > _12353:
                    mem[_12353 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12353) + 32], 
            _12354 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12354)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12354)]
            if ceil32(_12354) > _12354:
                mem[_12354 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12354) + 32], 
        mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12355 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12355)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12355)]
                if ceil32(_12355) > _12355:
                    mem[_12355 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12355) + 32], 
            _12356 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12356)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12356)]
            if ceil32(_12356) > _12356:
                mem[_12356 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12356) + 32], 
        mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _12357 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12357)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12357)]
            if ceil32(_12357) > _12357:
                mem[_12357 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12357) + 32], 
        _12358 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12358)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12358)]
        if ceil32(_12358) > _12358:
            mem[_12358 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12358) + 32], 
    if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if stor26[arg1].field_1 % 128 > 0:
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26[arg1].field_0):
                if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor26[arg1].field_0)):
                    if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if stor26[arg1].field_1 % 128:
                    if 31 >= stor26[arg1].field_1 % 128:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                    else:
                        mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                        idx = ceil32(stor25.length.field_1 % 128) + 160
                        s = 0
                        while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            return Array(len=2 * Mask(256, -1, uint256(stor26[arg1].field_0)), data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(uint255(uint256(stor26[arg1].field_0)) * 0.5)]), 
        if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor26[arg1].field_0):
            if bool(stor26[arg1].field_0) == uint255(uint256(stor26[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor26[arg1].field_0)):
                if 31 >= uint255(uint256(stor26[arg1].field_0)) * 0.5:
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                    idx = ceil32(stor25.length.field_1 % 128) + 160
                    s = 0
                    while ceil32(stor25.length.field_1 % 128) + (uint255(uint256(stor26[arg1].field_0)) * 0.5) + 128 > idx:
                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26[arg1].field_0) == stor26[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor26[arg1].field_1 % 128:
                if 31 >= stor26[arg1].field_1 % 128:
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor26[arg1].field_8)
                else:
                    mem[ceil32(stor25.length.field_1 % 128) + 160] = uint256(stor26[arg1].field_0)
                    idx = ceil32(stor25.length.field_1 % 128) + 160
                    s = 0
                    while ceil32(stor25.length.field_1 % 128) + stor26[arg1].field_1 % 128 + 128 > idx:
                        mem[idx + 32] = uint256(stor26[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=stor26[arg1].field_0 % 128, data=mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(stor26[arg1].field_1 % 128)]), 
    if not stor25.length.field_1 % 128:
        return ''
    if not arg1:
        mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 257] = mem[ceil32(stor25.length.field_1 % 128) + 192]
        mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])] = mem[ceil32(stor25.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192]) > mem[ceil32(stor25.length.field_1 % 128) + 192]:
            mem[mem[ceil32(stor25.length.field_1 % 128) + 192] + ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289] = 0
        return Array(len=mem[ceil32(stor25.length.field_1 % 128) + 192], data=mem[ceil32(stor25.length.field_1 % 128) + stor25.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 192])]), 
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
    mem[ceil32(stor25.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
        if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
            mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
                _12359 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12359)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12359)]
                if ceil32(_12359) > _12359:
                    mem[_12359 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12359) + 32], 
            _12360 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12360)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12360)]
            if ceil32(_12360) > _12360:
                mem[_12360 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12360) + 32], 
        mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _12361 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12361)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12361)]
            if ceil32(_12361) > _12361:
                mem[_12361 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12361) + 32], 
        _12362 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12362)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12362)]
        if ceil32(_12362) > _12362:
            mem[_12362 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12362) + 32], 
    mem[ceil32(stor25.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor25.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor25.length.field_1 % 128)] = mem[128 len ceil32(stor25.length.field_1 % 128)]
    if ceil32(stor25.length.field_1 % 128) <= stor25.length.field_1 % 128:
        mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
            _12363 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12363)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12363)]
            if ceil32(_12363) > _12363:
                mem[_12363 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12363) + 32], 
        _12364 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12364)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12364)]
        if ceil32(_12364) > _12364:
            mem[_12364 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12364) + 32], 
    mem[stor25.length.field_1 % 128 + ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])] = mem[ceil32(stor25.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128])]
    mem[64] = mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192
    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 192] = 32
    if ceil32(mem[ceil32(stor25.length.field_1 % 128) + 128]) <= mem[ceil32(stor25.length.field_1 % 128) + 128]:
        _12365 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12365)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12365)]
        if ceil32(_12365) > _12365:
            mem[_12365 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12365) + 32], 
    _12366 = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256 len ceil32(_12366)] = mem[ceil32(stor25.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_12366)]
    if ceil32(_12366) > _12366:
        mem[_12366 + mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 256] = 0
    return 32, mem[mem[ceil32(stor25.length.field_1 % 128) + 128] + ceil32(stor25.length.field_1 % 128) + ceil32(s) + stor25.length.field_1 % 128 + 224 len ceil32(_12366) + 32], 
}



}
