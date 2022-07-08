contract main {




// =====================  Runtime code  =====================


#
#  - sub_8f8a1647(?)
#  - sub_b84ccd69(?)
#  - tokenURI(uint256 arg1)
#
const sub_a1ebf35d(?) = 0x2fe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f

const DEFAULT_ADMIN_ROLE = 0


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
array of struct stor3;
array of struct stor106;
array of struct stor107;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor111;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor157;
array of uint256 tokenByIndex;
mapping of uint256 stor159;
mapping of uint8 stor206;
uint256 stor268;
array of struct stor269;
uint256 stor270;
address stor273;
mapping of struct roleAdmin;
array of struct roleMember;
uint8 stor375;
array of uint256 stor94029185606696244996515478518301360031312099976060629666899178486830056775142;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
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

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleMember[arg1].field_0)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor111[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_f79e0b86(?) {
    return not bool(stor0)
}

function sub_e82a586b(?) {
    require calldata.size - 4 >= 32
    if stor2 >= stor3.length:
        revert with 0, 50
    if arg1 and uint256(stor3[stor2].field_256) > -1 / arg1:
        revert with 0, 17
    return (arg1 * uint256(stor3[stor2].field_256))
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor111[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    staticcall stor273.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 and stor268 > -1 / arg2:
        revert with 0, 17
    return ext_call.return_data[12 len 20], arg2 * stor268 / 10000
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return bool(stor206[Mask(32, 224, arg1)])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor111[stor108[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_e5387052(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(roleAdmin[0x2fe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f][address(msg.sender)].field_0):
        emit 0x4748390d: Array(len=arg1.length, data=arg1[all])
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x2fe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f
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
    revert with 0, 'Strings: hex length insufficient'
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not uint256(roleMember[arg1][1][address(arg2)].field_0):
        uint256(roleMember[arg1].field_0)++
        address(roleMember[arg1][uint256(roleMember[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleMember[arg1][uint256(roleMember[arg1].field_0)].field_160) = 0
        uint256(roleMember[arg1][1][address(arg2)].field_0) = uint256(roleMember[arg1].field_0)
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
            if not stor111[stor108[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor159[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storCFE2[stor158.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor157[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1]
                stor157[stor156[address(arg1)][stor109[address(arg1)] - 1]] = stor157[arg3]
            stor157[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor109[address(arg2)]] = arg3
            stor157[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor159[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor159[arg3]] = tokenByIndex[tokenByIndex.length]
        stor159[stor158[stor158.length]] = stor159[arg3]
        stor159[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
            if not stor111[stor108[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor159[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storCFE2[stor158.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor157[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1]
                stor157[stor156[address(arg1)][stor109[address(arg1)] - 1]] = stor157[arg3]
            stor157[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor109[address(arg2)]] = arg3
            stor157[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor159[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor159[arg3]] = tokenByIndex[tokenByIndex.length]
        stor159[stor158[stor158.length]] = stor159[arg3]
        stor159[arg3] = 0
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
            if not stor111[stor108[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor159[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storCFE2[stor158.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor157[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1]
                stor157[stor156[address(arg1)][stor109[address(arg1)] - 1]] = stor157[arg3]
            stor157[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor109[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor109[address(arg2)]] = arg3
            stor157[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor159[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor159[arg3]] = tokenByIndex[tokenByIndex.length]
        stor159[stor158[stor158.length]] = stor159[arg3]
        stor159[arg3] = 0
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not -arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor106.length):
        if not bool(stor106.length) - (uint255(stor106.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor106.length):
            if not bool(stor106.length) - (uint255(stor106.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor106.length):
                if 31 < uint255(stor106.length) * 0.5:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor106.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor106[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor106.length.field_8)
        else:
            if not bool(stor106.length) - (stor106.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor106.length.field_1 % 128:
                if 31 < stor106.length.field_1 % 128:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while stor106.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor106[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor106.length.field_8)
        mem[ceil32(uint255(stor106.length) * 0.5) + 192 len ceil32(uint255(stor106.length) * 0.5)] = mem[128 len ceil32(uint255(stor106.length) * 0.5)]
        if ceil32(uint255(stor106.length) * 0.5) > uint255(stor106.length) * 0.5:
            mem[(uint255(stor106.length) * 0.5) + ceil32(uint255(stor106.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)], mem[(2 * ceil32(uint255(stor106.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor106.length) * 0.5)]), 
    if not bool(stor106.length) - (stor106.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor106.length):
        if not bool(stor106.length) - (uint255(stor106.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor106.length):
            if 31 < uint255(stor106.length) * 0.5:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while (uint255(stor106.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor106[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor106.length.field_8)
    else:
        if not bool(stor106.length) - (stor106.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor106.length.field_1 % 128:
            if 31 < stor106.length.field_1 % 128:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while stor106.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor106[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor106.length.field_8)
    mem[ceil32(stor106.length.field_1 % 128) + 192 len ceil32(stor106.length.field_1 % 128)] = mem[128 len ceil32(stor106.length.field_1 % 128)]
    if ceil32(stor106.length.field_1 % 128) > stor106.length.field_1 % 128:
        mem[stor106.length.field_1 % 128 + ceil32(stor106.length.field_1 % 128) + 192] = 0
    return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1 % 128)], mem[(2 * ceil32(stor106.length.field_1 % 128)) + 192 len 2 * ceil32(stor106.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor107.length):
        if not bool(stor107.length) - (uint255(stor107.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor107.length):
            if not bool(stor107.length) - (uint255(stor107.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor107.length):
                if 31 < uint255(stor107.length) * 0.5:
                    mem[128] = uint256(stor107.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor107.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor107[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor107.length), data=mem[128 len ceil32(uint255(stor107.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor107.length.field_8)
        else:
            if not bool(stor107.length) - (stor107.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor107.length.field_1 % 128:
                if 31 < stor107.length.field_1 % 128:
                    mem[128] = uint256(stor107.field_0)
                    idx = 128
                    s = 0
                    while stor107.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor107[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor107.length), data=mem[128 len ceil32(uint255(stor107.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor107.length.field_8)
        mem[ceil32(uint255(stor107.length) * 0.5) + 192 len ceil32(uint255(stor107.length) * 0.5)] = mem[128 len ceil32(uint255(stor107.length) * 0.5)]
        if ceil32(uint255(stor107.length) * 0.5) > uint255(stor107.length) * 0.5:
            mem[(uint255(stor107.length) * 0.5) + ceil32(uint255(stor107.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor107.length), data=mem[128 len ceil32(uint255(stor107.length) * 0.5)], mem[(2 * ceil32(uint255(stor107.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor107.length) * 0.5)]), 
    if not bool(stor107.length) - (stor107.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor107.length):
        if not bool(stor107.length) - (uint255(stor107.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor107.length):
            if 31 < uint255(stor107.length) * 0.5:
                mem[128] = uint256(stor107.field_0)
                idx = 128
                s = 0
                while (uint255(stor107.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor107[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor107.length % 128, data=mem[128 len ceil32(stor107.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor107.length.field_8)
    else:
        if not bool(stor107.length) - (stor107.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor107.length.field_1 % 128:
            if 31 < stor107.length.field_1 % 128:
                mem[128] = uint256(stor107.field_0)
                idx = 128
                s = 0
                while stor107.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor107[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor107.length % 128, data=mem[128 len ceil32(stor107.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor107.length.field_8)
    mem[ceil32(stor107.length.field_1 % 128) + 192 len ceil32(stor107.length.field_1 % 128)] = mem[128 len ceil32(stor107.length.field_1 % 128)]
    if ceil32(stor107.length.field_1 % 128) > stor107.length.field_1 % 128:
        mem[stor107.length.field_1 % 128 + ceil32(stor107.length.field_1 % 128) + 192] = 0
    return Array(len=stor107.length % 128, data=mem[128 len ceil32(stor107.length.field_1 % 128)], mem[(2 * ceil32(stor107.length.field_1 % 128)) + 192 len 2 * ceil32(stor107.length.field_1 % 128)]), 
}

function sub_b45032d5(?) {
    mem[64] = (32 * stor269.length) + 128
    mem[96] = stor269.length
    s = 128
    idx = 0
    while idx < stor269.length:
        mem[0] = 269
        _19 = mem[64]
        mem[64] = mem[64] + 64
        mem[_19] = uint16(stor269[idx].field_0)
        if bool(stor269[idx].field_256):
            if not bool(stor269[idx].field_256) - (uint255(uint256(stor269[idx].field_256)) * 0.5 < 32):
                revert with 0, 34
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor269[idx].field_256)) * 0.5) + 32
            mem[_25] = uint255(uint256(stor269[idx].field_256)) * 0.5
            if bool(stor269[idx].field_256):
                if not bool(stor269[idx].field_256) - (uint255(uint256(stor269[idx].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, uint256(stor269[idx].field_256)):
                    if 31 >= uint255(uint256(stor269[idx].field_256)) * 0.5:
                        mem[_25 + 32] = 256 * Mask(248, 0, stor269[idx].field_264)
                    else:
                        mem[0] = sha3(269) + (2 * idx) + 1
                        mem[_25 + 32] = uint256(stor[sha3(('name', 'stor269', 269) + (2 * idx) + 1)].field_0)
                        t = _25 + 32
                        u = sha3(mem[0])
                        while _25 + (uint255(uint256(stor269[idx].field_256)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_19 + 32] = _25
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if not bool(stor269[idx].field_256) - (stor269[idx].field_257 % 128 < 32):
                revert with 0, 34
            if not stor269[idx].field_257 % 128:
                mem[_19 + 32] = _25
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor269[idx].field_257 % 128:
                mem[_25 + 32] = 256 * Mask(248, 0, stor269[idx].field_264)
                mem[_19 + 32] = _25
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(269) + (2 * idx) + 1
            mem[_25 + 32] = uint256(stor[sha3(('name', 'stor269', 269) + (2 * idx) + 1)].field_0)
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor269[u].field_257 % 128 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_19 + 32] = _25
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if not bool(stor269[idx].field_256) - (stor269[idx].field_257 % 128 < 32):
            revert with 0, 34
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(stor269[idx].field_257 % 128) + 32
        mem[_28] = stor269[idx].field_257 % 128
        if bool(stor269[idx].field_256):
            if not bool(stor269[idx].field_256) - (uint255(uint256(stor269[idx].field_256)) * 0.5 < 32):
                revert with 0, 34
            if not Mask(256, -1, uint256(stor269[idx].field_256)):
                mem[_19 + 32] = _28
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(uint256(stor269[idx].field_256)) * 0.5:
                mem[_28 + 32] = 256 * Mask(248, 0, stor269[idx].field_264)
                mem[_19 + 32] = _28
                mem[s] = _19
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = sha3(269) + (2 * idx) + 1
            mem[_28 + 32] = uint256(stor[sha3(('name', 'stor269', 269) + (2 * idx) + 1)].field_0)
            t = _28 + 32
            u = sha3(mem[0])
            while _28 + (uint255(uint256(stor269[u].field_256)) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_19 + 32] = _28
            mem[t] = _19
            t = t + 32
            u = u + 1
            continue 
        if not bool(stor269[idx].field_256) - (stor269[idx].field_257 % 128 < 32):
            revert with 0, 34
        if stor269[idx].field_257 % 128:
            if 31 >= stor269[idx].field_257 % 128:
                mem[_28 + 32] = 256 * Mask(248, 0, stor269[idx].field_264)
            else:
                mem[0] = sha3(269) + (2 * idx) + 1
                mem[_28 + 32] = uint256(stor[sha3(('name', 'stor269', 269) + (2 * idx) + 1)].field_0)
                t = _28 + 32
                u = sha3(mem[0])
                while _28 + stor269[idx].field_257 % 128 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_19 + 32] = _28
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _21:
        mem[u] = t + -_20 - 64
        _34 = mem[s]
        mem[t] = mem[mem[s] + 30 len 2]
        _36 = mem[_34 + 32]
        mem[t + 32] = 64
        _38 = mem[_36]
        mem[t + 64] = mem[_36]
        v = 0
        while v < _38:
            mem[v + t + 96] = mem[v + _36 + 32]
            v = v + 32
            continue 
        if ceil32(_38) > _38:
            mem[_38 + t + 96] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_38) + t + 96
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_9320e58c(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 288
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 352
    require calldata.size - 36 >= 256
    if not uint8(roleAdmin[0x2fe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f][address(msg.sender)].field_0):
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x2fe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f
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
        revert with 0, 'Strings: hex length insufficient'
    if stor375:
        revert with 0, 'eie::already-emitted'
    stor375 = 1
    mem[96] = 448
    require ('cd', 4).length < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4).length + 4)]
    mem[544] = 352
    mem[896] = cd[(cd[4] + ('cd', 4).length + 4)]
    mem[928 len cd[(cd[4] + ('cd', 4).length + 4)]] = call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]]
    mem[cd[(cd[4] + ('cd', 4).length + 4)] + 928] = 0
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[576] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 384
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 928] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 960 len cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len cd[(cd[4] + ('cd', 4)[0] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[0] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 960] = 0
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[1] + 4)]
    mem[608] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 416
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 960] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 992 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + 992] = 0
    require ('cd', 4)[2] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[2] + 4)]
    mem[640] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 448
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 992] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1024 len cd[(cd[4] + ('cd', 4)[2] + 4)]] = call.data[cd[4] + ('cd', 4)[2] + 36 len cd[(cd[4] + ('cd', 4)[2] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[2] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1024] = 0
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[672] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 480
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1024] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1056 len cd[(cd[4] + ('cd', 4)[3] + 4)]] = call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[3] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1056] = 0
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[704] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 512
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1056] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1088 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[4] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + 1088] = 0
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[5] + 4)]
    mem[736] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 544
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1088] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1120 len cd[(cd[4] + ('cd', 4)[5] + 4)]] = call.data[cd[4] + ('cd', 4)[5] + 36 len cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[5] + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + 1120] = 0
    require ('cd', 4)[6] == address(('cd', 4)[6])
    mem[768] = address(('cd', 4)[6])
    require ('cd', 4)[7] == address(('cd', 4)[7])
    mem[800] = address(('cd', 4)[7])
    require ('cd', 4)[8] == uint16(('cd', 4)[8])
    mem[832] = uint16(('cd', 4)[8])
    require ('cd', 4)[9] == address(('cd', 4)[9])
    mem[864] = address(('cd', 4)[9])
    require cd[36] == address(cd[36])
    mem[128] = address(cd[36])
    require cd[68] == address(cd[68])
    mem[160] = address(cd[68])
    require cd[100] == address(cd[100])
    mem[192] = address(cd[100])
    require cd[132] == address(cd[132])
    mem[224] = address(cd[132])
    require cd[164] == address(cd[164])
    mem[256] = address(cd[164])
    require cd[196] == address(cd[196])
    mem[288] = address(cd[196])
    require cd[228] == address(cd[228])
    mem[320] = address(cd[228])
    require cd[260] == address(cd[260])
    mem[352] = address(cd[260])
    mem[384] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1024
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1120] = stor269.length
    mem[0] = 269
    idx = 0
    s = 0
    t = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + (32 * stor269.length) + 1152
    u = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1152
    while idx < stor269.length:
        mem[u] = t + -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[0] + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)]) + -ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)]) - 1152
        mem[t] = uint16(stor[s + sha3(mem[0])].field_0)
        mem[t + 32] = 64
        if bool(stor[s + sha3(mem[0]) + 1].field_0):
            if not bool(stor[s + sha3(mem[0]) + 1].field_0) - (uint255(uint256(stor[s + sha3(mem[0]) + 1].field_0)) * 0.5 < 32):
                revert with 0, 34
            mem[t + 64] = uint255(uint256(stor[s + sha3(mem[0]) + 1].field_0)) * 0.5
            if not bool(stor[s + sha3(mem[0]) + 1].field_0):
                mem[t + 96] = Mask(248, 8, uint256(stor[s + sha3(mem[0]) + 1].field_0))
                idx = idx + 1
                s = s + 2
                t = t + 128
                u = u + 32
                continue 
            if bool(stor[s + sha3(mem[0]) + 1].field_0) != 1:
                idx = idx + 1
                s = s + 2
                t = 0
                u = u + 32
                continue 
            mem[0] = s + sha3(mem[0]) + 1
            v = 0
            w = sha3(w + sha3(mem[0]) + 1)
            while v < uint255(uint256(stor[w + sha3(mem[0]) + 1].field_0)) * 0.5:
                mem[v + t + 96] = uint256(stor[w + sha3(mem[0])].field_0)
                v = v + 32
                w = w + 1
                continue 
            v = v + 1
            w = w + 2
            t = t + v + 96
            u = u + 32
            continue 
        if not bool(stor[s + sha3(mem[0]) + 1].field_0) - (stor[s + sha3(mem[0]) + 1].field_1 % 128 < 32):
            revert with 0, 34
        mem[t + 64] = stor[s + sha3(mem[0]) + 1].field_1 % 128
        if not bool(stor[s + sha3(mem[0]) + 1].field_0):
            mem[t + 96] = Mask(248, 8, uint256(stor[s + sha3(mem[0]) + 1].field_0))
            idx = idx + 1
            s = s + 2
            t = t + 128
            u = u + 32
            continue 
        if bool(stor[s + sha3(mem[0]) + 1].field_0) != 1:
            idx = idx + 1
            s = s + 2
            t = 0
            u = u + 32
            continue 
        mem[0] = s + sha3(mem[0]) + 1
        v = 0
        w = sha3(s + sha3(mem[0]) + 1)
        while v < stor[s + sha3(mem[0]) + 1].field_1 % 128:
            mem[v + t + 96] = uint256(stor[w].field_0)
            v = v + 32
            w = w + 1
            continue 
        idx = idx + 1
        s = s + 2
        t = t + v + 96
        u = u + 32
        continue 
    mem[416] = t - 96
    mem[t] = stor270
    mem[0] = 270
    u = 0
    v = 0
    w = t + 32
    while u < stor270:
        mem[w] = uint256(stor[v + sha3(mem[0])].field_0)
        mem[w + 32] = uint256(stor[v + sha3(mem[0]) + 1].field_0)
        u = u + 1
        v = v + 2
        w = w + 64
        continue 
    mem[448] = stor273
    mem[480] = t + (64 * stor270) - 64
    mem[t + (64 * stor270) + 32] = stor3.length
    u = 0
    v = 0
    w = t + (64 * stor270) + 64
    while u < stor3.length:
        mem[w] = uint256(stor3[v].field_0)
        mem[w + 32] = uint256(stor3[v].field_256)
        u = u + 1
        v = v + 2
        w = w + 64
        continue 
    mem[512] = address(stor1.length)
    emit 0x20c57a0b: mem[mem[64] len t + (64 * stor270) + (64 * stor3.length) + -mem[64] + 64]
}



}
