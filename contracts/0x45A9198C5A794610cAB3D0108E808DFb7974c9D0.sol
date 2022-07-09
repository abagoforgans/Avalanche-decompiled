contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6be73d1(?)
#  - tokenURI(uint256 arg1)
#
const sub_a1ebf35d(?) = 0xe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f70

const DEFAULT_ADMIN_ROLE = 0


address stor0;
uint256 stor4;
address stor5;
address stor7;
address stor9;
address stor10;
uint256 stor11;
mapping of struct stor12;
uint256 stor13;
mapping of address stor14;
array of struct stor116;
array of struct stor117;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor121;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor167;
array of uint256 tokenByIndex;
mapping of uint256 stor169;
mapping of struct roleAdmin;
array of uint256 stor86350371308328484709849599791222096963463024941147025350174102708160065129881;

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
    return roleAdmin[arg1].field_256
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

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor121[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_e82a586b(?) {
    require calldata.size - 4 >= 32
    return 0
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor11 > -1 / arg2:
        revert with 0, 17
    return stor14[arg1], arg2 * stor11 / 10000
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor121[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor121[stor118[arg2]][address(msg.sender)]:
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
    if uint8(roleAdmin[0xe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f70][address(msg.sender)].field_0):
        emit 0x4748390d: Array(len=arg1.length, data=arg1[all])
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
    s = 0xe2f4eaae4a9751e85a3e4a7b9587827a877f29914755229b07a7b2da98285f70
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
            if not stor121[stor118[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor169[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBEE8[stor168.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor167[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor167[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1]
                stor167[stor166[address(arg1)][stor119[address(arg1)] - 1]] = stor167[arg3]
            stor167[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor119[address(arg2)]] = arg3
            stor167[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor169[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor169[arg3]] = tokenByIndex[tokenByIndex.length]
        stor169[stor168[stor168.length]] = stor169[arg3]
        stor169[arg3] = 0
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
            if not stor121[stor118[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor169[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBEE8[stor168.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor167[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor167[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1]
                stor167[stor166[address(arg1)][stor119[address(arg1)] - 1]] = stor167[arg3]
            stor167[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor119[address(arg2)]] = arg3
            stor167[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor169[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor169[arg3]] = tokenByIndex[tokenByIndex.length]
        stor169[stor168[stor168.length]] = stor169[arg3]
        stor169[arg3] = 0
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
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor121[stor118[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor169[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storBEE8[stor168.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor167[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor167[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1]
                stor167[stor166[address(arg1)][stor119[address(arg1)] - 1]] = stor167[arg3]
            stor167[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor119[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor119[address(arg2)]] = arg3
            stor167[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor169[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor169[arg3]] = tokenByIndex[tokenByIndex.length]
        stor169[stor168[stor168.length]] = stor169[arg3]
        stor169[arg3] = 0
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
    if bool(stor116.length):
        if not bool(stor116.length) - (uint255(stor116.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor116.length):
            if not bool(stor116.length) - (uint255(stor116.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor116.length):
                if 31 < uint255(stor116.length) * 0.5:
                    mem[128] = uint256(stor116.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor116.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor116[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor116.length), data=mem[128 len ceil32(uint255(stor116.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor116.length.field_8)
        else:
            if not bool(stor116.length) - (stor116.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor116.length.field_1 % 128:
                if 31 < stor116.length.field_1 % 128:
                    mem[128] = uint256(stor116.field_0)
                    idx = 128
                    s = 0
                    while stor116.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor116[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor116.length), data=mem[128 len ceil32(uint255(stor116.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor116.length.field_8)
        mem[ceil32(uint255(stor116.length) * 0.5) + 192 len ceil32(uint255(stor116.length) * 0.5)] = mem[128 len ceil32(uint255(stor116.length) * 0.5)]
        if ceil32(uint255(stor116.length) * 0.5) > uint255(stor116.length) * 0.5:
            mem[(uint255(stor116.length) * 0.5) + ceil32(uint255(stor116.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor116.length), data=mem[128 len ceil32(uint255(stor116.length) * 0.5)], mem[(2 * ceil32(uint255(stor116.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor116.length) * 0.5)]), 
    if not bool(stor116.length) - (stor116.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor116.length):
        if not bool(stor116.length) - (uint255(stor116.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor116.length):
            if 31 < uint255(stor116.length) * 0.5:
                mem[128] = uint256(stor116.field_0)
                idx = 128
                s = 0
                while (uint255(stor116.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor116[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor116.length % 128, data=mem[128 len ceil32(stor116.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor116.length.field_8)
    else:
        if not bool(stor116.length) - (stor116.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor116.length.field_1 % 128:
            if 31 < stor116.length.field_1 % 128:
                mem[128] = uint256(stor116.field_0)
                idx = 128
                s = 0
                while stor116.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor116[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor116.length % 128, data=mem[128 len ceil32(stor116.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor116.length.field_8)
    mem[ceil32(stor116.length.field_1 % 128) + 192 len ceil32(stor116.length.field_1 % 128)] = mem[128 len ceil32(stor116.length.field_1 % 128)]
    if ceil32(stor116.length.field_1 % 128) > stor116.length.field_1 % 128:
        mem[stor116.length.field_1 % 128 + ceil32(stor116.length.field_1 % 128) + 192] = 0
    return Array(len=stor116.length % 128, data=mem[128 len ceil32(stor116.length.field_1 % 128)], mem[(2 * ceil32(stor116.length.field_1 % 128)) + 192 len 2 * ceil32(stor116.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor117.length):
        if not bool(stor117.length) - (uint255(stor117.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor117.length):
            if not bool(stor117.length) - (uint255(stor117.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor117.length):
                if 31 < uint255(stor117.length) * 0.5:
                    mem[128] = uint256(stor117.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor117.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor117[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor117.length), data=mem[128 len ceil32(uint255(stor117.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor117.length.field_8)
        else:
            if not bool(stor117.length) - (stor117.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor117.length.field_1 % 128:
                if 31 < stor117.length.field_1 % 128:
                    mem[128] = uint256(stor117.field_0)
                    idx = 128
                    s = 0
                    while stor117.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor117[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor117.length), data=mem[128 len ceil32(uint255(stor117.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor117.length.field_8)
        mem[ceil32(uint255(stor117.length) * 0.5) + 192 len ceil32(uint255(stor117.length) * 0.5)] = mem[128 len ceil32(uint255(stor117.length) * 0.5)]
        if ceil32(uint255(stor117.length) * 0.5) > uint255(stor117.length) * 0.5:
            mem[(uint255(stor117.length) * 0.5) + ceil32(uint255(stor117.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor117.length), data=mem[128 len ceil32(uint255(stor117.length) * 0.5)], mem[(2 * ceil32(uint255(stor117.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor117.length) * 0.5)]), 
    if not bool(stor117.length) - (stor117.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor117.length):
        if not bool(stor117.length) - (uint255(stor117.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor117.length):
            if 31 < uint255(stor117.length) * 0.5:
                mem[128] = uint256(stor117.field_0)
                idx = 128
                s = 0
                while (uint255(stor117.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor117[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor117.length % 128, data=mem[128 len ceil32(stor117.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor117.length.field_8)
    else:
        if not bool(stor117.length) - (stor117.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor117.length.field_1 % 128:
            if 31 < stor117.length.field_1 % 128:
                mem[128] = uint256(stor117.field_0)
                idx = 128
                s = 0
                while stor117.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor117[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor117.length % 128, data=mem[128 len ceil32(stor117.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor117.length.field_8)
    mem[ceil32(stor117.length.field_1 % 128) + 192 len ceil32(stor117.length.field_1 % 128)] = mem[128 len ceil32(stor117.length.field_1 % 128)]
    if ceil32(stor117.length.field_1 % 128) > stor117.length.field_1 % 128:
        mem[stor117.length.field_1 % 128 + ceil32(stor117.length.field_1 % 128) + 192] = 0
    return Array(len=stor117.length % 128, data=mem[128 len ceil32(stor117.length.field_1 % 128)], mem[(2 * ceil32(stor117.length.field_1 % 128)) + 192 len 2 * ceil32(stor117.length.field_1 % 128)]), 
}

function sub_17c693ad(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    mem[100] = 64
    require ('cd', 4).length == address(('cd', 4).length)
    mem[164] = address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[196] = address(('cd', 4)[0])
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[1] + 4)]
    mem[228] = 160
    mem[324] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    mem[356 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 356] = 0
    mem[260] = ('cd', 4)[2]
    require ('cd', 4)[3] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[3] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[292] = ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 192
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 356] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 388 len cd[(cd[4] + ('cd', 4)[3] + 4)]] = call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[3] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 388] = 0
    mem[132] = msg.sender
    require ext_code.size(stor9)
    staticcall stor9.0x8e6db307 with:
            gas gas_remaining wei
           args 0, 64, msg.sender, address(('cd', 4).length), address(('cd', 4)[0]), 160, ('cd', 4)[2], ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 192, cd[(cd[4] + ('cd', 4)[1] + 4)], call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]], 0, mem[cd[(cd[4] + ('cd', 4)[1] + 4)] + 388 len ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)]) - cd[(cd[4] + ('cd', 4)[1] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value < 0:
        revert with 0, 'M::insufficient-funds'
    require ('cd', 4)[1] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[1] + 4)]
    if stor4 > !cd[36]:
        revert with 0, 17
    if stor4 + cd[36] > stor13:
        revert with 0, 'MAGTI::not-enough-tokens'
    call stor0.generateRandomNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[36] > test266151307():
        revert with 0, 65
    idx = 0
    s = ext_call.return_data[0]
    while idx < cd[36]:
        if not stor13:
            revert with 0, 18
        t = 0
        u = 0
        while t < stor13:
            if sha3(s, idx) % stor13 > !t:
                revert with 0, 17
            if not stor13:
                revert with 0, 18
            mem[0] = (sha3(s, idx) % stor13) + t % stor13
            mem[32] = 118
            if ownerOf[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13]:
                if not t + 1:
                    revert with 0, 17
                t = t + 1
                u = (sha3(s, idx) % stor13) + t % stor13
                continue 
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13]:
                revert with 0, 'ERC721: token already minted'
            stor169[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = tokenByIndex.length
            tokenByIndex.length++
            storBEE8[stor168.length] = (sha3(s, idx) % stor13) + t % stor13
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor119[address(msg.sender)]] = (sha3(s, idx) % stor13) + t % stor13
                    stor167[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = msg.sender
                emit Transfer(0, msg.sender, (sha3(s, idx) % stor13) + t % stor13);
                if not stor7:
                    stor14[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = msg.sender
                else:
                    stor14[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = stor7
                mem[32] = 12
                if bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0):
                    if not bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) - (uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5 < 32):
                        revert with 0, 34
                    mem[0] = sha3((sha3(s, idx) % stor13) + t % stor13, 12)
                    if not cd[(cd[4] + ('cd', 4)[1] + 4)]:
                        stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = 0
                        u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                        while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + ((uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5) + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                    else:
                        stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = (2 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1
                        v = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                        u = cd[4] + ('cd', 4)[1] + 36
                        while cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 > u:
                            stor[v] = cd[u]
                            v = v + 1
                            u = u + 32
                            continue 
                        u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (Mask(251, 0, cd[(cd[4] + ('cd', 4)[1] + 4)] + 31) >> 5)
                        while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + ((uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5) + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                else:
                    if not bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) - (stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_1 % 128 < 32):
                        revert with 0, 34
                    mem[0] = sha3((sha3(s, idx) % stor13) + t % stor13, 12)
                    if not cd[(cd[4] + ('cd', 4)[1] + 4)]:
                        stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = 0
                        u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                        while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                    else:
                        stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = (2 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1
                        v = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                        u = cd[4] + ('cd', 4)[1] + 36
                        while cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 > u:
                            stor[v] = cd[u]
                            v = v + 1
                            u = u + 32
                            continue 
                        u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (Mask(251, 0, cd[(cd[4] + ('cd', 4)[1] + 4)] + 31) >> 5)
                        while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) > u:
                            stor[u] = 0
                            u = u + 1
                            continue 
                if idx >= cd[36]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = (sha3(s, idx) % stor13) + t % stor13
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(s, idx)
                continue 
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor169[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor169[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13]] = tokenByIndex[tokenByIndex.length]
            stor169[stor168[stor168.length]] = stor169[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13]
            stor169[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            ownerOf[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = msg.sender
            emit Transfer(0, msg.sender, (sha3(s, idx) % stor13) + t % stor13);
            if not stor7:
                stor14[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = msg.sender
            else:
                stor14[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13] = stor7
            mem[32] = 12
            if bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0):
                if not bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) - (uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5 < 32):
                    revert with 0, 34
                mem[0] = sha3((sha3(s, idx) % stor13) + t % stor13, 12)
                if not cd[(cd[4] + ('cd', 4)[1] + 4)]:
                    stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = 0
                    u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                    while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + ((uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5) + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                else:
                    stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = (2 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1
                    v = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                    u = cd[4] + ('cd', 4)[1] + 36
                    while cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 > u:
                        stor[v] = cd[u]
                        v = v + 1
                        u = u + 32
                        continue 
                    u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (Mask(251, 0, cd[(cd[4] + ('cd', 4)[1] + 4)] + 31) >> 5)
                    while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + ((uint255(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) * 0.5) + 31 / 32) > u:
                        stor[u] = 0
                        u = u + 1
                        continue 
                if idx >= cd[36]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = (sha3(s, idx) % stor13) + t % stor13
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(s, idx)
                continue 
            if not bool(stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0) - (stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_1 % 128 < 32):
                revert with 0, 34
            mem[0] = sha3((sha3(s, idx) % stor13) + t % stor13, 12)
            if not cd[(cd[4] + ('cd', 4)[1] + 4)]:
                stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = 0
                u = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
                while sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) > u:
                    stor[u] = 0
                    u = u + 1
                    continue 
                if idx >= cd[36]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = (sha3(s, idx) % stor13) + t % stor13
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(s, idx)
                continue 
            stor12[(('map', ('var', 1), ('var', 0)) % stor13) + t % stor13].field_0 = (2 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 1
            v = sha3(sha3((sha3(s, idx) % stor13) + t % stor13, 12))
            u = cd[4] + ('cd', 4)[1] + 36
            while cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 > u:
                stor[v] = cd[u]
                v = v + 1
                u = u + 32
                continue 
            u = sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (Mask(251, 0, cd[(cd[4] + ('cd', 4)[1] + 4)] + 31) >> 5)
            while sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 3)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) > u:
                stor[u] = 0
                u = u + 1
                continue 
            if sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 3)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) >= cd[36]:
                revert with 0, 50
            mem[(32 * sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 3)) % stor13) + t % stor13].field_1 % 128 + 31 / 32)) + ceil32(return_data.size) + 128] = (sha3(s, u) % stor13) + t % stor13
            if not sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 3)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) + 1:
                revert with 0, 17
            u = sha3(sha3((sha3(s, u) % stor13) + t % stor13, 12)) + (stor12[(('map', ('var', 1), ('var', 3)) % stor13) + t % stor13].field_1 % 128 + 31 / 32) + 1
            s = sha3(s, u)
            continue 
        revert with 0, 1
    if stor4 > !cd[36]:
        revert with 0, 17
    stor4 += cd[36]
    if not cd[36]:
        if stor5:
            mem[ceil32(return_data.size) + (32 * cd[36]) + 132] = 64
            mem[ceil32(return_data.size) + (32 * cd[36]) + 196] = cd[36]
            mem[ceil32(return_data.size) + (32 * cd[36]) + 228 len 32 * cd[36]] = mem[ceil32(return_data.size) + 128 len 32 * cd[36]]
            mem[ceil32(return_data.size) + (32 * cd[36]) + 164] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x52136c7c with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * cd[36]) + 132 len (96 * cd[36]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor5:
            mem[ceil32(return_data.size) + (32 * cd[36]) + 132] = 64
            mem[ceil32(return_data.size) + (32 * cd[36]) + 196] = cd[36]
            mem[ceil32(return_data.size) + (32 * cd[36]) + 228 len 32 * cd[36]] = call.data[calldata.size len 32 * cd[36]]
            mem[ceil32(return_data.size) + (32 * cd[36]) + 164] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x52136c7c with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + (32 * cd[36]) + 132 len (96 * cd[36]) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < msg.value:
        revert with 0, 'Address: insufficient balance'
    call stor10 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
}



}
