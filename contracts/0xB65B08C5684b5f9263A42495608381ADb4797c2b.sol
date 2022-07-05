contract main {




// =====================  Runtime code  =====================


#
#  - sub_090a3282(?)
#  - mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - sub_fafdcc88(?)
#
const TRANSFER_ROLE = 0x8502233096d909befbda0999bb8ea2f3a6be3c138b9fbf003752a4c8bce86f6c

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
uint8 stor5;
mapping of uint256 totalSupply;
address stor7;
address stor8;
address stor9;
uint256 nextTokenId;
uint256 royaltyBps;
array of struct stor12;
uint8 stor13;
mapping of struct creator;
mapping of struct sub_367a182b;
mapping of struct sub_5cd9913d;
mapping of uint8 stor56303404950152965302615529049884071363929349766701979926234883952044568548396;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_367a182b(?) payable {
    require calldata.size - 4 >= 32
    return sub_367a182b[arg1].field_0, sub_367a182b[arg1].field_256
}

function creator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return creator[arg1].field_0
}

function paused() payable {
    return bool(stor5)
}

function sub_5cd9913d(?) payable {
    require calldata.size - 4 >= 32
    return sub_5cd9913d[arg1].field_0, sub_5cd9913d[arg1].field_256, sub_5cd9913d[arg1].field_512
}

function nextTokenId() payable {
    return nextTokenId
}

function sub_8423df79(?) payable {
    return bool(stor13)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply[arg1]
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
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function owner() payable {
    if roleAdmin[0][stor9].field_0:
        return stor9
    else:
        return 0
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor7 == arg1)
}

function sub_8ba448c2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if stor7 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'only module admin role'
    else:
        if not roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'only module admin role'
    stor13 = uint8(bool(cd[4]))
    emit 0xfb4ba02c: bool(cd[4])
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'only module admin role'
    else:
        if not roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'only module admin role'
    if not roleAdmin[0][address(arg1)].field_0:
        revert with 0, 'new owner not module admin.'
    stor9 = arg1
    emit NewOwner(stor9, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.getRoyaltyTreasury(address arg1) with:
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function setRoyaltyBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'only module admin role'
    else:
        if not roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'only module admin role'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NFTCollection: Invalid bps provided; must be less than 10,000.'
    royaltyBps = arg1
    emit 0x244ea8d7: arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor7 != msg.sender:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, msg.sender, arg1);
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        stor3[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = uint8(arg2)
        emit ApprovalForAll(arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
}

function pause() payable {
    if stor7 != msg.sender:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC1155PresetMinterPauser: must have pauser role to pause'
    else:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC1155PresetMinterPauser: must have pauser role to pause'
    if stor5:
        revert with 0, 'Pausable: paused'
    stor5 = 1
    if stor7 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if stor7 != msg.sender:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC1155PresetMinterPauser: must have pauser role to unpause'
    else:
        if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC1155PresetMinterPauser: must have pauser role to unpause'
    if not stor5:
        revert with 0, 'Pausable: not paused'
    stor5 = 0
    if stor7 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 97 < 96 or ceil32(32 * arg3.length) + 97 > test266151307():
        revert with 0, 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = 128
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = ceil32(32 * arg3.length) + 129
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 99 < 98 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor7 != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        if stor7 != msg.sender:
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

function setContractURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if stor7 != msg.sender:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'only module admin role'
    else:
        if not roleAdmin[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'only module admin role'
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor12.length = 0
            idx = 0
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor12.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor12[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = arg1.length
    if arg1.length:
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC1155: balance query for the zero address'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg1.length) + 129], 2)
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balanceOf[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function tokenState(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if creator[arg1].field_256:
            if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, creator[arg1].field_256):
                if 31 >= uint255(creator[arg1].field_256) * 0.5:
                    mem[128] = 256 * creator[arg1].field_264
                else:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if creator[arg1].field_256 == creator[arg1].field_257 < 32:
                revert with 0, 34
            if creator[arg1].field_257:
                if 31 >= creator[arg1].field_257:
                    mem[128] = 256 * creator[arg1].field_264
                else:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while creator[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if creator[arg1].field_512 >= 3:
            revert with 0, 33
        return creator[arg1].field_0, 
               Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)]),
               creator[arg1].field_512
    if creator[arg1].field_256 == creator[arg1].field_257 < 32:
        revert with 0, 34
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, creator[arg1].field_256):
            if 31 >= uint255(creator[arg1].field_256) * 0.5:
                mem[128] = 256 * creator[arg1].field_264
            else:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if creator[arg1].field_256 == creator[arg1].field_257 < 32:
            revert with 0, 34
        if creator[arg1].field_257:
            if 31 >= creator[arg1].field_257:
                mem[128] = 256 * creator[arg1].field_264
            else:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while creator[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if creator[arg1].field_512 >= 3:
        revert with 0, 33
    return creator[arg1].field_0, 
           Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)]),
           creator[arg1].field_512
}

function contractURI() payable {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function _contractURI() payable {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor7 != msg.sender:
        if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
        if not roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    else:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        if stor7 != msg.sender:
            emit RoleGranted(arg1, arg2, msg.sender);
        else:
            emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if creator[arg1].field_256:
            if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, creator[arg1].field_256):
                if 31 < uint255(creator[arg1].field_256) * 0.5:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)])
                mem[128] = 256 * creator[arg1].field_264
        else:
            if creator[arg1].field_256 == creator[arg1].field_257 < 32:
                revert with 0, 34
            if creator[arg1].field_257:
                if 31 < creator[arg1].field_257:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while creator[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)])
                mem[128] = 256 * creator[arg1].field_264
        mem[ceil32(uint255(creator[arg1].field_256) * 0.5) + 192 len ceil32(uint255(creator[arg1].field_256) * 0.5)] = mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)]
        if ceil32(uint255(creator[arg1].field_256) * 0.5) > uint255(creator[arg1].field_256) * 0.5:
            mem[(uint255(creator[arg1].field_256) * 0.5) + ceil32(uint255(creator[arg1].field_256) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)], mem[(2 * ceil32(uint255(creator[arg1].field_256) * 0.5)) + 192 len 2 * ceil32(uint255(creator[arg1].field_256) * 0.5)]), 
    if creator[arg1].field_256 == creator[arg1].field_257 < 32:
        revert with 0, 34
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, creator[arg1].field_256):
            if 31 < uint255(creator[arg1].field_256) * 0.5:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)])
            mem[128] = 256 * creator[arg1].field_264
    else:
        if creator[arg1].field_256 == creator[arg1].field_257 < 32:
            revert with 0, 34
        if creator[arg1].field_257:
            if 31 < creator[arg1].field_257:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while creator[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)])
            mem[128] = 256 * creator[arg1].field_264
    mem[ceil32(creator[arg1].field_257) + 192 len ceil32(creator[arg1].field_257)] = mem[128 len ceil32(creator[arg1].field_257)]
    if ceil32(creator[arg1].field_257) > creator[arg1].field_257:
        mem[creator[arg1].field_257 + ceil32(creator[arg1].field_257) + 192] = 0
    return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)], mem[(2 * ceil32(creator[arg1].field_257)) + 192 len 2 * ceil32(creator[arg1].field_257)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if creator[arg1].field_256:
            if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, creator[arg1].field_256):
                if 31 < uint255(creator[arg1].field_256) * 0.5:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)])
                mem[128] = 256 * creator[arg1].field_264
        else:
            if creator[arg1].field_256 == creator[arg1].field_257 < 32:
                revert with 0, 34
            if creator[arg1].field_257:
                if 31 < creator[arg1].field_257:
                    mem[128] = creator[arg1][1].field_0
                    idx = 128
                    s = 0
                    while creator[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = creator[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)])
                mem[128] = 256 * creator[arg1].field_264
        mem[ceil32(uint255(creator[arg1].field_256) * 0.5) + 192 len ceil32(uint255(creator[arg1].field_256) * 0.5)] = mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)]
        if ceil32(uint255(creator[arg1].field_256) * 0.5) > uint255(creator[arg1].field_256) * 0.5:
            mem[(uint255(creator[arg1].field_256) * 0.5) + ceil32(uint255(creator[arg1].field_256) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, creator[arg1].field_256), data=mem[128 len ceil32(uint255(creator[arg1].field_256) * 0.5)], mem[(2 * ceil32(uint255(creator[arg1].field_256) * 0.5)) + 192 len 2 * ceil32(uint255(creator[arg1].field_256) * 0.5)]), 
    if creator[arg1].field_256 == creator[arg1].field_257 < 32:
        revert with 0, 34
    if creator[arg1].field_256:
        if creator[arg1].field_256 == uint255(creator[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, creator[arg1].field_256):
            if 31 < uint255(creator[arg1].field_256) * 0.5:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(creator[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)])
            mem[128] = 256 * creator[arg1].field_264
    else:
        if creator[arg1].field_256 == creator[arg1].field_257 < 32:
            revert with 0, 34
        if creator[arg1].field_257:
            if 31 < creator[arg1].field_257:
                mem[128] = creator[arg1][1].field_0
                idx = 128
                s = 0
                while creator[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = creator[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)])
            mem[128] = 256 * creator[arg1].field_264
    mem[ceil32(creator[arg1].field_257) + 192 len ceil32(creator[arg1].field_257)] = mem[128 len ceil32(creator[arg1].field_257)]
    if ceil32(creator[arg1].field_257) > creator[arg1].field_257:
        mem[creator[arg1].field_257 + ceil32(creator[arg1].field_257) + 192] = 0
    return Array(len=creator[arg1].field_256, data=mem[128 len ceil32(creator[arg1].field_257)], mem[(2 * ceil32(creator[arg1].field_257)) + 192 len 2 * ceil32(creator[arg1].field_257)]), 
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor7 != msg.sender:
        if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
        if not roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        if stor7 != msg.sender:
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

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2 >= nextTokenId:
        revert with 0, 'NFTCollection: cannot call this fn for creating new NFTs.'
    if creator[arg2].field_512 > 2:
        revert with 0, 33
    if creator[arg2].field_512:
        revert with 0, 'NFTCollection: cannot freely mint more of ERC20 or ERC721.'
    if stor7 != msg.sender:
        if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
            revert with 0, 'ERC1155PresetMinterPauser: must have minter role to mint'
    else:
        if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0, 'ERC1155PresetMinterPauser: must have minter role to mint'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[ceil32(ceil32(arg4.length)) + 129] = arg2
    mem[ceil32(ceil32(arg4.length)) + 161] = 1
    mem[ceil32(ceil32(arg4.length)) + 193] = arg3
    if stor5:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
        mem[32] = 6
        if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]
            mem[32] = 6
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    if stor7 != msg.sender:
        emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
        if ext_code.size(arg1):
            require ext_code.size(arg1)
            call arg1.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0, arg1);
        if ext_code.size(arg1):
            require ext_code.size(arg1)
            call arg1.0xf23a6e61 with:
                 gas gas_remaining wei
                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, 0, arg2, arg3, 160, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, 1) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if stor7 != msg.sender:
        if arg1 != msg.sender:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
    else:
        if arg1 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    mem[ceil32(ceil32(arg5.length)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + 161] = 1
    mem[ceil32(ceil32(arg5.length)) + 193] = arg4
    if stor5:
        revert with 0, 'ERC1155Pausable: token transfer while paused'
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 6
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] > !mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] += mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if not arg2:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 6
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if stor13:
        if arg1:
            if arg2:
                if not stor7C7A[address(arg1)]:
                    if not stor7C7A[address(arg2)]:
                        revert with 0, 'NFTCollection: Transfers are restricted to or from TRANSFER_ROLE holders'
    if balanceOf[arg3][address(arg1)] < arg4:
        revert with 0, 'ERC1155: insufficient balance for transfer'
    balanceOf[arg3][address(arg1)] -= arg4
    if balanceOf[arg3][arg2] > !arg4:
        revert with 0, 17
    balanceOf[arg3][arg2] += arg4
    if stor7 != msg.sender:
        emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        emit TransferSingle(arg3, arg4, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, arg2);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.0xf23a6e61 with:
                 gas gas_remaining wei
                args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg3.length) + 98 < 97 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + 97] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = arg3 + 36
    s = ceil32(32 * arg2.length) + 129
    while idx < arg3 + (32 * arg3.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor7 != msg.sender:
        if arg1 == msg.sender:
            if not arg1:
                revert with 0, 'ERC1155: burn from the zero address'
            if arg2.length != arg3.length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
            if stor5:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            if arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var74001 = arg2.length
                    var79001 = arg3.length
                else:
                    if not arg1:
                        var75001 = arg2.length
                        var80001 = arg3.length
                    else:
                        var76001 = arg2.length
                        var81001 = arg3.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var83001 = arg3.length
                else:
                    if not arg1:
                        var79001 = arg2.length
                    else:
                        var80001 = arg2.length
                        var85001 = arg3.length
            if stor7 != msg.sender:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
            else:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
        else:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            if not arg1:
                revert with 0, 'ERC1155: burn from the zero address'
            if arg2.length != arg3.length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
            if stor5:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            if arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var80001 = arg2.length
                    var85001 = arg3.length
                else:
                    if not arg1:
                        var81001 = arg2.length
                        var86001 = arg3.length
                    else:
                        var82001 = arg2.length
                        var87001 = arg3.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                else:
                    if not arg1:
                        var85001 = arg2.length
                    else:
                        var86001 = arg2.length
            if stor7 != msg.sender:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
            else:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
    else:
        if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            if not arg1:
                revert with 0, 'ERC1155: burn from the zero address'
            if arg2.length != arg3.length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
            if stor5:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            if arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var74001 = arg2.length
                    var79001 = arg3.length
                else:
                    if not arg1:
                        var75001 = arg2.length
                        var80001 = arg3.length
                    else:
                        var76001 = arg2.length
                        var81001 = arg3.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var83001 = arg3.length
                else:
                    if not arg1:
                        var79001 = arg2.length
                    else:
                        var80001 = arg2.length
                        var85001 = arg3.length
            if stor7 != msg.sender:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
            else:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
        else:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0, 'ERC1155: caller is not owner nor approved'
            if not arg1:
                revert with 0, 'ERC1155: burn from the zero address'
            if arg2.length != arg3.length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
            if stor5:
                revert with 0, 'ERC1155Pausable: token transfer while paused'
            if arg1:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                    var80001 = arg2.length
                    var85001 = arg3.length
                else:
                    if not arg1:
                        var81001 = arg2.length
                        var86001 = arg3.length
                    else:
                        var82001 = arg2.length
                        var87001 = arg3.length
            else:
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg2.length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 6
                    if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    if idx >= arg2.length:
                        revert with 0, 50
                    if idx >= arg3.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = arg1
                    mem[32] = sha3(mem[(32 * idx) + 128], 2)
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not stor13:
                else:
                    if not arg1:
                        var85001 = arg2.length
                    else:
                        var86001 = arg2.length
            if stor7 != msg.sender:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
            else:
                emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
}

function sub_db884b0c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if stor5:
        revert with 0, 'Pausable: paused'
    if stor7 != msg.sender:
        if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NFTCollection: Only accounts with MINTER_ROLE can call this function.'
    else:
        if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'NFTCollection: Only accounts with MINTER_ROLE can call this function.'
    require ext_code.size(address(cd[4]))
    if stor7 != msg.sender:
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            revert with 0, 'NFTCollection: Must own the amount of tokens being wrapped.'
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            revert with 0, 'NFTCollection: Must approve this contract to transfer tokens.'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[36]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
        if nextTokenId > -2:
            revert with 0, 17
        nextTokenId++
        if not msg.sender:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[(4 * ceil32(return_data.size)) + 160] = nextTokenId
        mem[(4 * ceil32(return_data.size)) + 192] = 1
        mem[(4 * ceil32(return_data.size)) + 224] = cd[68]
        if stor5:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
            mem[32] = 6
            if totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] > !mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] += mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not msg.sender:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                mem[32] = 6
                if totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] < mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] -= mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if balanceOf[stor10][address(msg.sender)] > !cd[68]:
            revert with 0, 17
        balanceOf[stor10][address(msg.sender)] += cd[68]
        if stor7 != msg.sender:
            emit TransferSingle(nextTokenId, cd[68], msg.sender, 0, msg.sender);
            if not ext_code.size(msg.sender):
                creator[stor10].field_0 = msg.sender
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), msg.sender, address(cd[4])
            else:
                mem[(4 * ceil32(return_data.size)) + 388] = 160
                mem[(4 * ceil32(return_data.size)) + 420] = 0
                mem[(4 * ceil32(return_data.size)) + 452 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, 0, nextTokenId, cd[68], 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                'ERC1155: ERC1155Receiver rejected tokens',
                                mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                creator[stor10].field_0 = msg.sender
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                mem[('cd', 100).length + (6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640] = 0
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len (9 * ceil32(return_data.size)) + ceil32(('cd', 100).length)]), msg.sender, address(cd[4])
        else:
            emit TransferSingle(nextTokenId, cd[68], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0, msg.sender);
            if not ext_code.size(msg.sender):
                creator[stor10].field_0 = msg.sender
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), msg.sender, address(cd[4])
            else:
                mem[(4 * ceil32(return_data.size)) + 388] = 160
                mem[(4 * ceil32(return_data.size)) + 420] = 0
                mem[(4 * ceil32(return_data.size)) + 452 len 0] = None
                require ext_code.size(msg.sender)
                call msg.sender.0xf23a6e61 with:
                     gas gas_remaining wei
                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, 0, nextTokenId, cd[68], 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                'ERC1155: ERC1155Receiver rejected tokens',
                                mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                creator[stor10].field_0 = msg.sender
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                mem[('cd', 100).length + (6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640] = 0
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len (9 * ceil32(return_data.size)) + ceil32(('cd', 100).length)]), msg.sender, address(cd[4])
    else:
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            revert with 0, 'NFTCollection: Must own the amount of tokens being wrapped.'
        mem[ceil32(return_data.size) + 100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        mem[ceil32(return_data.size) + 132] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            revert with 0, 'NFTCollection: Must approve this contract to transfer tokens.'
        mem[(2 * ceil32(return_data.size)) + 100] = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        mem[(2 * ceil32(return_data.size)) + 164] = cd[36]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address, cd[36]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
        if nextTokenId > -2:
            revert with 0, 17
        nextTokenId++
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'ERC1155: mint to the zero address'
        mem[(4 * ceil32(return_data.size)) + 160] = nextTokenId
        mem[(4 * ceil32(return_data.size)) + 192] = 1
        mem[(4 * ceil32(return_data.size)) + 224] = cd[68]
        if stor5:
            revert with 0, 'ERC1155Pausable: token transfer while paused'
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
            mem[32] = 6
            if totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] > !mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] += mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 0, 50
                if idx >= 1:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]
                mem[32] = 6
                if totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] < mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + (4 * ceil32(return_data.size)) + 160]] -= mem[(32 * idx) + (4 * ceil32(return_data.size)) + 224]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if balanceOf[stor10][Mask(64, 96, cd[(calldata.size - 20)]) << 96] > !cd[68]:
            revert with 0, 17
        balanceOf[stor10][Mask(64, 96, cd[(calldata.size - 20)]) << 96] += cd[68]
        if stor7 != msg.sender:
            emit TransferSingle(nextTokenId, cd[68], msg.sender, 0, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if not ext_code.size(Mask(64, 96, cd[(calldata.size - 20)]) >> 96):
                creator[stor10].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                creator[stor10].field_64 = 0
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4])
            else:
                mem[(4 * ceil32(return_data.size)) + 388] = 160
                mem[(4 * ceil32(return_data.size)) + 420] = 0
                mem[(4 * ceil32(return_data.size)) + 452 len 0] = None
                require ext_code.size(Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
                call Mask(64, 96, cd[(calldata.size - 20)]) >> 96.0xf23a6e61 with:
                     gas gas_remaining wei
                    args msg.sender, 0, nextTokenId, cd[68], 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                'ERC1155: ERC1155Receiver rejected tokens',
                                mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                creator[stor10].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                creator[stor10].field_64 = 0
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                mem[('cd', 100).length + (6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640] = 0
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len (9 * ceil32(return_data.size)) + ceil32(('cd', 100).length)]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4])
        else:
            emit TransferSingle(nextTokenId, cd[68], Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if not ext_code.size(Mask(64, 96, cd[(calldata.size - 20)]) >> 96):
                creator[stor10].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                creator[stor10].field_64 = 0
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4])
            else:
                mem[(4 * ceil32(return_data.size)) + 388] = 160
                mem[(4 * ceil32(return_data.size)) + 420] = 0
                mem[(4 * ceil32(return_data.size)) + 452 len 0] = None
                require ext_code.size(Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
                call Mask(64, 96, cd[(calldata.size - 20)]) >> 96.0xf23a6e61 with:
                     gas gas_remaining wei
                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, 0, nextTokenId, cd[68], 160, 0
                if not ext_call.success:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                'ERC1155: ERC1155Receiver rejected tokens',
                                mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                creator[stor10].field_0 = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
                creator[stor10].field_64 = 0
                if creator[stor10].field_256:
                    if creator[stor10].field_256 == uint255(creator[stor10].field_256) * 0.5 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while (uint255(creator[stor10].field_256) * 0.5) + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if creator[stor10].field_256 == creator[stor10].field_257 < 32:
                        revert with 0, 34
                    if ('cd', 100).length:
                        creator[stor10][1][].field_0 = Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                    else:
                        creator[stor10].field_256 = 0
                        idx = 0
                        while creator[stor10].field_257 + 31 / 32 > idx:
                            creator[stor10][idx + 1].field_0 = 0
                            idx = idx + 1
                            continue 
                creator[stor10].field_512 = 1
                sub_5cd9913d[stor10].field_0 = address(cd[4])
                sub_5cd9913d[stor10].field_256 = cd[68]
                sub_5cd9913d[stor10].field_512 = cd[36]
                mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                mem[('cd', 100).length + (6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640] = 0
                emit 0x53af9a53: cd[36], cd[68], nextTokenId, Array(len=('cd', 100).length, data=mem[(6 * ceil32(return_data.size)) + ceil32(('cd', 100).length) + 640 len (9 * ceil32(return_data.size)) + ceil32(('cd', 100).length)]), Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(cd[4])
}

function redeemERC721(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7 != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        else:
            if balanceOf[arg1][address(msg.sender)] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'NFTCollection: Cannot redeem an NFT you do not own.'
            else:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                else:
                    if stor7 != msg.sender:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = 1
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if msg.sender:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)]--
                                        emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)]--
                                        emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                    else:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = 1
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if msg.sender:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)]--
                                        emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)]--
                                        emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, msg.sender, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, msg.sender, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, msg.sender, sub_367a182b[arg1].field_0);
    else:
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        else:
            if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'NFTCollection: Cannot redeem an NFT you do not own.'
            else:
                if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                else:
                    if stor7 != msg.sender:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = 1
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                        emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                        emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                    else:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = 1
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                        emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                        emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        require ext_code.size(sub_367a182b[arg1].field_0)
                                        call sub_367a182b[arg1].field_0.0x42842e0e with:
                                             gas gas_remaining wei
                                            args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < 1:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96]--
                                            emit TransferSingle(arg1, 1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            require ext_code.size(sub_367a182b[arg1].field_0)
                                            call sub_367a182b[arg1].field_0.0x42842e0e with:
                                                 gas gas_remaining wei
                                                args this.address, Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_367a182b[arg1].field_256
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                emit ERC721Redeemed(sub_367a182b[arg1].field_256, arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, sub_367a182b[arg1].field_0);
}

function redeemERC20(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        else:
            if balanceOf[arg1][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'NFTCollection: Cannot redeem an NFT you do not own.'
            else:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                else:
                    if stor7 != msg.sender:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = arg2
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if msg.sender:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)] -= arg2
                                        emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)] -= arg2
                                        emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                    else:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = arg2
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if msg.sender:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)] -= arg2
                                        emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][address(msg.sender)] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][address(msg.sender)] -= arg2
                                        emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not msg.sender:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][address(msg.sender)] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][address(msg.sender)] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, msg.sender, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, msg.sender, arg1, sub_5cd9913d[arg1].field_0
    else:
        if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
        else:
            if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'NFTCollection: Cannot redeem an NFT you do not own.'
            else:
                if not Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                else:
                    if stor7 != msg.sender:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = arg2
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                        emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                        emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, msg.sender, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                    else:
                        mem[128] = arg1
                        mem[160] = 1
                        mem[192] = arg2
                        mem[224] = 0
                        if stor5:
                            revert with 0, 'ERC1155Pausable: token transfer while paused'
                        else:
                            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                        emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                            else:
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                idx = 0
                                while idx < 1:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            mem[0] = mem[(32 * idx) + 128]
                                            mem[32] = 6
                                            if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                revert with 0, 17
                                            else:
                                                totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                if idx == -1:
                                                    revert with 0, 17
                                                else:
                                                    idx = idx + 1
                                                    continue 
                                if not stor13:
                                    if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                        emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                        if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                            revert with 0, 17
                                        else:
                                            if not sub_5cd9913d[arg1].field_256:
                                                revert with 0, 18
                                            else:
                                                require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                    else:
                                                        emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                else:
                                    if not Mask(64, 96, cd[(calldata.size - 20)]):
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
                                    else:
                                        if balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg2:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg1][Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg2
                                            emit TransferSingle(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, 0);
                                            if sub_5cd9913d[arg1].field_512 and arg2 > -1 / sub_5cd9913d[arg1].field_512:
                                                revert with 0, 17
                                            else:
                                                if not sub_5cd9913d[arg1].field_256:
                                                    revert with 0, 18
                                                else:
                                                    require ext_code.size(sub_5cd9913d[arg1].field_0)
                                                    call sub_5cd9913d[arg1].field_0.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args Mask(64, 96, cd[(calldata.size - 20)]) << 96, sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, 'NFTCollection: Failed to transfer ERC20 tokens.'
                                                        else:
                                                            emit 0xb80333a3: sub_5cd9913d[arg1].field_512 * arg2 / sub_5cd9913d[arg1].field_256, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, sub_5cd9913d[arg1].field_0
}

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor7 != msg.sender:
        if arg1 == msg.sender:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
            else:
                if stor7 != msg.sender:
                    mem[128] = arg2
                    mem[160] = 1
                    mem[192] = arg3
                    mem[224] = 0
                    if stor5:
                        revert with 0, 'ERC1155Pausable: token transfer while paused'
                    else:
                        if arg1:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                else:
                    mem[128] = arg2
                    mem[160] = 1
                    mem[192] = arg3
                    mem[224] = 0
                    if stor5:
                        revert with 0, 'ERC1155Pausable: token transfer while paused'
                    else:
                        if arg1:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                        else:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
        else:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                    else:
                        if stor7 != msg.sender:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                    else:
                        if stor7 != msg.sender:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
    else:
        if arg1 == Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
            else:
                if stor7 != msg.sender:
                    mem[128] = arg2
                    mem[160] = 1
                    mem[192] = arg3
                    mem[224] = 0
                    if stor5:
                        revert with 0, 'ERC1155Pausable: token transfer while paused'
                    else:
                        if arg1:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                else:
                    mem[128] = arg2
                    mem[160] = 1
                    mem[192] = arg3
                    mem[224] = 0
                    if stor5:
                        revert with 0, 'ERC1155Pausable: token transfer while paused'
                    else:
                        if arg1:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                        else:
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            idx = 0
                            while idx < 1:
                                if idx >= 1:
                                    revert with 0, 50
                                else:
                                    if idx >= 1:
                                        revert with 0, 50
                                    else:
                                        mem[0] = mem[(32 * idx) + 128]
                                        mem[32] = 6
                                        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                            revert with 0, 17
                                        else:
                                            totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                            if idx == -1:
                                                revert with 0, 17
                                            else:
                                                idx = idx + 1
                                                continue 
                            if not stor13:
                                if balanceOf[arg2][address(arg1)] < arg3:
                                    revert with 0, 'ERC1155: burn amount exceeds balance'
                                else:
                                    balanceOf[arg2][address(arg1)] -= arg3
                                    emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                            else:
                                if not arg1:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    if balanceOf[arg2][address(arg1)] < arg3:
                                        revert with 0, 'ERC1155: burn amount exceeds balance'
                                    else:
                                        balanceOf[arg2][address(arg1)] -= arg3
                                        emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
        else:
            if stor7 != msg.sender:
                if not stor3[address(arg1)][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                    else:
                        if stor7 != msg.sender:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
            else:
                if not stor3[address(arg1)][Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
                else:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                    else:
                        if stor7 != msg.sender:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
                        else:
                            mem[128] = arg2
                            mem[160] = 1
                            mem[192] = arg3
                            mem[224] = 0
                            if stor5:
                                revert with 0, 'ERC1155Pausable: token transfer while paused'
                            else:
                                if arg1:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                else:
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    idx = 0
                                    while idx < 1:
                                        if idx >= 1:
                                            revert with 0, 50
                                        else:
                                            if idx >= 1:
                                                revert with 0, 50
                                            else:
                                                mem[0] = mem[(32 * idx) + 128]
                                                mem[32] = 6
                                                if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + 192]:
                                                    revert with 0, 17
                                                else:
                                                    totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + 192]
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    else:
                                                        idx = idx + 1
                                                        continue 
                                    if not stor13:
                                        if balanceOf[arg2][address(arg1)] < arg3:
                                            revert with 0, 'ERC1155: burn amount exceeds balance'
                                        else:
                                            balanceOf[arg2][address(arg1)] -= arg3
                                            emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                    else:
                                        if not arg1:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
                                        else:
                                            if balanceOf[arg2][address(arg1)] < arg3:
                                                revert with 0, 'ERC1155: burn amount exceeds balance'
                                            else:
                                                balanceOf[arg2][address(arg1)] -= arg3
                                                emit TransferSingle(arg2, arg3, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1, 0);
}



}
