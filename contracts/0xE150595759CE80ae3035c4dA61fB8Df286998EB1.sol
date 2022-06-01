contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2)
#
const sub_9f28c7de(?) = 0x3f4577c1d609ce1c32cd4cca7eb774aab5c1610132877c75ff7c971f62238f6e

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct stor151;
array of struct stor152;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor156;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor202;
array of uint256 tokenByIndex;
mapping of uint256 stor204;
uint256 latestTokenId;
mapping of struct fishes;
uint8 sub_10baa74c;
uint8 sub_a5933864; offset 8
uint256 sub_92735395;
uint256 sub_84fc34b7;
address receiverAddress;
uint256 stor257;
mapping of uint256 sub_42b72afa;
address stor259;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_10baa74c(?) {
    return bool(sub_10baa74c)
}

function totalSupply() {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_42b72afa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_42b72afa[arg1]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function sub_84fc34b7(?) {
    return sub_84fc34b7
}

function latestTokenId() {
    return latestTokenId
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_92735395(?) {
    return sub_92735395
}

function sub_a5933864(?) {
    return bool(sub_a5933864)
}

function fishes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if fishes[arg1].field_512 >= 4:
        revert with 'NH{q', 33
    return fishes[arg1].field_0, fishes[arg1].field_256, fishes[arg1].field_512
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor156[address(arg1)][address(arg2)])
}

function receiver() {
    return receiverAddress
}

function _fallback() payable {
  stop
}

function updateContract() {
    if not roleAdmin[0x3f4577c1d609ce1c32cd4cca7eb774aab5c1610132877c75ff7c971f62238f6e][address(msg.sender)].field_0:
        revert with 0, 'admin only'
    stor259 = 0xa77230d17318075983913bc2145db16c7366156
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    return ''
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor156[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getLatestPrice() {
    require ext_code.size(stor259)
    staticcall stor259.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (15000000000 * 10^18 / ext_call.return_data[32])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor156[stor153[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not sub_a5933864:
        revert with 0, 'ff: cannot transfer'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not sub_a5933864:
        revert with 0, 'ff: cannot transfer'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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

function name() {
    if bool(stor151.length):
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor151.length):
            if bool(stor151.length) == stor151.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor151.length.field_1:
                if 31 < stor151.length.field_1:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length.field_1), data=mem[128 len ceil32(stor151.length.field_1)])
                mem[128] = 256 * stor151.length.field_8
        else:
            if bool(stor151.length) == stor151.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor151.length.field_1:
                if 31 < stor151.length.field_1:
                    mem[128] = uint256(stor151.field_0)
                    idx = 128
                    s = 0
                    while stor151.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor151[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor151.length.field_1), data=mem[128 len ceil32(stor151.length.field_1)])
                mem[128] = 256 * stor151.length.field_8
        mem[ceil32(stor151.length.field_1) + 192 len ceil32(stor151.length.field_1)] = mem[128 len ceil32(stor151.length.field_1)]
        if ceil32(stor151.length.field_1) > stor151.length.field_1:
            mem[ceil32(stor151.length.field_1) + stor151.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor151.length.field_1), data=mem[128 len ceil32(stor151.length.field_1)], mem[(2 * ceil32(stor151.length.field_1)) + 192 len 2 * ceil32(stor151.length.field_1)]), 
    if bool(stor151.length) == stor151.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor151.length):
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor151.length.field_1:
            if 31 < stor151.length.field_1:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    else:
        if bool(stor151.length) == stor151.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor151.length.field_1:
            if 31 < stor151.length.field_1:
                mem[128] = uint256(stor151.field_0)
                idx = 128
                s = 0
                while stor151.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor151[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)])
            mem[128] = 256 * stor151.length.field_8
    mem[ceil32(stor151.length.field_1) + 192 len ceil32(stor151.length.field_1)] = mem[128 len ceil32(stor151.length.field_1)]
    if ceil32(stor151.length.field_1) > stor151.length.field_1:
        mem[ceil32(stor151.length.field_1) + stor151.length.field_1 + 192] = 0
    return Array(len=stor151.length % 128, data=mem[128 len ceil32(stor151.length.field_1)], mem[(2 * ceil32(stor151.length.field_1)) + 192 len 2 * ceil32(stor151.length.field_1)]), 
}

function symbol() {
    if bool(stor152.length):
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor152.length):
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor152.length.field_1:
                if 31 < stor152.length.field_1:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)])
                mem[128] = 256 * stor152.length.field_8
        else:
            if bool(stor152.length) == stor152.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor152.length.field_1:
                if 31 < stor152.length.field_1:
                    mem[128] = uint256(stor152.field_0)
                    idx = 128
                    s = 0
                    while stor152.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor152[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)])
                mem[128] = 256 * stor152.length.field_8
        mem[ceil32(stor152.length.field_1) + 192 len ceil32(stor152.length.field_1)] = mem[128 len ceil32(stor152.length.field_1)]
        if ceil32(stor152.length.field_1) > stor152.length.field_1:
            mem[ceil32(stor152.length.field_1) + stor152.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor152.length.field_1), data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
    if bool(stor152.length) == stor152.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor152.length):
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor152.length.field_1:
            if 31 < stor152.length.field_1:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    else:
        if bool(stor152.length) == stor152.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor152.length.field_1:
            if 31 < stor152.length.field_1:
                mem[128] = uint256(stor152.field_0)
                idx = 128
                s = 0
                while stor152.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor152[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)])
            mem[128] = 256 * stor152.length.field_8
    mem[ceil32(stor152.length.field_1) + 192 len ceil32(stor152.length.field_1)] = mem[128 len ceil32(stor152.length.field_1)]
    if ceil32(stor152.length.field_1) > stor152.length.field_1:
        mem[ceil32(stor152.length.field_1) + stor152.length.field_1 + 192] = 0
    return Array(len=stor152.length % 128, data=mem[128 len ceil32(stor152.length.field_1)], mem[(2 * ceil32(stor152.length.field_1)) + 192 len 2 * ceil32(stor152.length.field_1)]), 
}

function evolve(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'not owner'
    if sub_10baa74c:
        revert with 0, 'paused'
    if fishes[arg1].field_0:
        revert with 0, 'evolved'
    if stor257 == -1:
        revert with 'NH{q', 17
    stor257++
    if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 100000 > -1:
        revert with 'NH{q', 17
    if stor257 == -1:
        revert with 'NH{q', 17
    stor257++
    if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 100000 <= 5000:
        if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 3 > -2:
            revert with 'NH{q', 17
        fishes[arg1].field_0 = (sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 3) + 1
    else:
        if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 100000 > 47000:
            if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 9 > -11:
                revert with 'NH{q', 17
            fishes[arg1].field_0 = (sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 9) + 10
        else:
            if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 6 > -4:
                revert with 'NH{q', 17
            fishes[arg1].field_0 = (sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 6) + 3
    if fishes[arg1].field_0 == 7:
        fishes[arg1].field_512 = 3
    else:
        if fishes[arg1].field_0 == 14:
            fishes[arg1].field_512 = 3
        else:
            if fishes[arg1].field_0 == 15:
                fishes[arg1].field_512 = 3
            else:
                if fishes[arg1].field_0 == 16:
                    fishes[arg1].field_512 = 3
                else:
                    if fishes[arg1].field_0 == 9:
                        fishes[arg1].field_512 = 2
                    else:
                        if fishes[arg1].field_0 == 11:
                            fishes[arg1].field_512 = 2
                        else:
                            if fishes[arg1].field_0 == 12:
                                fishes[arg1].field_512 = 2
                            else:
                                if fishes[arg1].field_0 == 13:
                                    fishes[arg1].field_512 = 2
                                else:
                                    if fishes[arg1].field_0 == 8:
                                        fishes[arg1].field_512 = 1
                                    else:
                                        if fishes[arg1].field_0 == 17:
                                            fishes[arg1].field_512 = 1
                                        else:
                                            if fishes[arg1].field_0 == 18:
                                                fishes[arg1].field_512 = 1
                                            else:
                                                if fishes[arg1].field_0 == 19:
                                                    fishes[arg1].field_512 = 1
                                                else:
                                                    if stor257 == -1:
                                                        revert with 'NH{q', 17
                                                    stor257++
                                                    if sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 3 > -2:
                                                        revert with 'NH{q', 17
                                                    if (sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 3) + 1 > 3:
                                                        revert with 'NH{q', 33
                                                    fishes[arg1].field_512 = (sha3(block.coinbase, block.timestamp, arg1, stor257 + 1) % 3) + 1 or Mask(248, 8, fishes[arg1].field_512)
    fishes[arg1].field_256 = block.timestamp
    emit Evolved(fishes[arg1].field_0, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
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
            if not stor156[stor153[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not sub_a5933864:
        revert with 0, 'ff: cannot transfer'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor202[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor154[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor154[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor154[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
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

function purchasePack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_10baa74c:
        revert with 0, 'paused'
    if arg1 == 1:
        if sub_92735395 < arg1:
            revert with 0, 'sold out'
        if sub_92735395 <= 0:
            revert with 0, 'sold out'
        require ext_code.size(stor259)
        staticcall stor259.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if 15000000000 * 10^18 / ext_call.return_data[32] and arg1 > -1 / 15000000000 * 10^18 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if msg.value <= 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
            if 15000000000 * 10^18 / ext_call.return_data[32] * arg1 < msg.value:
                revert with 'NH{q', 17
            if (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - msg.value > 5 * 10^14:
                revert with 0, 'different rate already'
            call receiverAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'purchasePack: not enough avax'
                if sub_92735395 < arg1:
                    revert with 'NH{q', 17
                sub_92735395 -= arg1
                idx = 0
                while idx < arg1:
                    if latestTokenId > -2:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor251 + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor204[stor251 + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                        stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _863 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_863] = 0
                        mem[_863 + 32] = 0
                        mem[_863 + 64] = 0
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor204[stor251 + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                        stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                        stor204[stor251 + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _923 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_923] = 0
                        mem[_923 + 32] = 0
                        mem[_923 + 64] = 0
                    mem[0] = latestTokenId + 1
                    mem[32] = 252
                    fishes[stor251 + 1].field_0 = 0
                    fishes[stor251 + 1].field_256 = 0
                    fishes[stor251 + 1].field_512 = 0
                    fishes[stor251 + 1].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                if not ext_call.success:
                    revert with 0, 'purchasePack: not enough avax'
                if sub_92735395 < arg1:
                    revert with 'NH{q', 17
                sub_92735395 -= arg1
                idx = 0
                while idx < arg1:
                    if latestTokenId > -2:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor251 + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor204[stor251 + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                        stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _864 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_864] = 0
                        mem[_864 + 32] = 0
                        mem[_864 + 64] = 0
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor204[stor251 + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                        stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                        stor204[stor251 + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _924 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_924] = 0
                        mem[_924 + 32] = 0
                        mem[_924 + 64] = 0
                    mem[0] = latestTokenId + 1
                    mem[32] = 252
                    fishes[stor251 + 1].field_0 = 0
                    fishes[stor251 + 1].field_256 = 0
                    fishes[stor251 + 1].field_512 = 0
                    fishes[stor251 + 1].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if msg.value < 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
                revert with 'NH{q', 17
            if sub_42b72afa[address(msg.sender)] > -msg.value + (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - 1:
                revert with 'NH{q', 17
            sub_42b72afa[address(msg.sender)] = sub_42b72afa[address(msg.sender)] + msg.value - (15000000000 * 10^18 / ext_call.return_data[32] * arg1)
            call receiverAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'purchasePack: not enough avax'
                if sub_92735395 < arg1:
                    revert with 'NH{q', 17
                sub_92735395 -= arg1
                idx = 0
                while idx < arg1:
                    if latestTokenId > -2:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor251 + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor204[stor251 + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                        stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _865 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_865] = 0
                        mem[_865 + 32] = 0
                        mem[_865 + 64] = 0
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor204[stor251 + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                        stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                        stor204[stor251 + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _925 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_925] = 0
                        mem[_925 + 32] = 0
                        mem[_925 + 64] = 0
                    mem[0] = latestTokenId + 1
                    mem[32] = 252
                    fishes[stor251 + 1].field_0 = 0
                    fishes[stor251 + 1].field_256 = 0
                    fishes[stor251 + 1].field_512 = 0
                    fishes[stor251 + 1].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                if not ext_call.success:
                    revert with 0, 'purchasePack: not enough avax'
                if sub_92735395 < arg1:
                    revert with 'NH{q', 17
                sub_92735395 -= arg1
                idx = 0
                while idx < arg1:
                    if latestTokenId > -2:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor251 + 1]:
                        revert with 0, 'ERC721: token already minted'
                    stor204[stor251 + 1] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                    if msg.sender:
                        tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                        stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _866 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_866] = 0
                        mem[_866 + 32] = 0
                        mem[_866 + 64] = 0
                    else:
                        if tokenByIndex.length < 1:
                            revert with 'NH{q', 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        if stor204[stor251 + 1] >= tokenByIndex.length:
                            revert with 'NH{q', 50
                        tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                        stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                        stor204[stor251 + 1] = 0
                        if not tokenByIndex.length:
                            revert with 'NH{q', 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = latestTokenId + 1
                        mem[32] = 153
                        ownerOf[stor251 + 1] = msg.sender
                        emit Transfer(0, msg.sender, latestTokenId + 1);
                        if latestTokenId == -1:
                            revert with 'NH{q', 17
                        latestTokenId++
                        _926 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_926] = 0
                        mem[_926 + 32] = 0
                        mem[_926 + 64] = 0
                    mem[0] = latestTokenId + 1
                    mem[32] = 252
                    fishes[stor251 + 1].field_0 = 0
                    fishes[stor251 + 1].field_256 = 0
                    fishes[stor251 + 1].field_512 = 0
                    fishes[stor251 + 1].field_768 = 0
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    else:
        if arg1 == 5:
            if sub_92735395 < arg1:
                revert with 0, 'sold out'
            if sub_92735395 <= 0:
                revert with 0, 'sold out'
            require ext_code.size(stor259)
            staticcall stor259.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 15000000000 * 10^18 / ext_call.return_data[32] and arg1 > -1 / 15000000000 * 10^18 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if msg.value <= 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
                if 15000000000 * 10^18 / ext_call.return_data[32] * arg1 < msg.value:
                    revert with 'NH{q', 17
                if (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - msg.value > 5 * 10^14:
                    revert with 0, 'different rate already'
                call receiverAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _867 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_867] = 0
                            mem[_867 + 32] = 0
                            mem[_867 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _927 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_927] = 0
                            mem[_927 + 32] = 0
                            mem[_927 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _868 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_868] = 0
                            mem[_868 + 32] = 0
                            mem[_868 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _928 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_928] = 0
                            mem[_928 + 32] = 0
                            mem[_928 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if msg.value < 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
                    revert with 'NH{q', 17
                if sub_42b72afa[address(msg.sender)] > -msg.value + (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - 1:
                    revert with 'NH{q', 17
                sub_42b72afa[address(msg.sender)] = sub_42b72afa[address(msg.sender)] + msg.value - (15000000000 * 10^18 / ext_call.return_data[32] * arg1)
                call receiverAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _869 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_869] = 0
                            mem[_869 + 32] = 0
                            mem[_869 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _929 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_929] = 0
                            mem[_929 + 32] = 0
                            mem[_929 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _870 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_870] = 0
                            mem[_870 + 32] = 0
                            mem[_870 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _930 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_930] = 0
                            mem[_930 + 32] = 0
                            mem[_930 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
        else:
            if arg1 != 10:
                revert with 0, 'not sale'
            if sub_92735395 < arg1:
                revert with 0, 'sold out'
            if sub_92735395 <= 0:
                revert with 0, 'sold out'
            require ext_code.size(stor259)
            staticcall stor259.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 15000000000 * 10^18 / ext_call.return_data[32] and arg1 > -1 / 15000000000 * 10^18 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if msg.value <= 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
                if 15000000000 * 10^18 / ext_call.return_data[32] * arg1 < msg.value:
                    revert with 'NH{q', 17
                if (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - msg.value > 5 * 10^14:
                    revert with 0, 'different rate already'
                call receiverAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _871 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_871] = 0
                            mem[_871 + 32] = 0
                            mem[_871 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _931 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_931] = 0
                            mem[_931 + 32] = 0
                            mem[_931 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _872 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_872] = 0
                            mem[_872 + 32] = 0
                            mem[_872 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _932 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_932] = 0
                            mem[_932 + 32] = 0
                            mem[_932 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
            else:
                if msg.value < 15000000000 * 10^18 / ext_call.return_data[32] * arg1:
                    revert with 'NH{q', 17
                if sub_42b72afa[address(msg.sender)] > -msg.value + (15000000000 * 10^18 / ext_call.return_data[32] * arg1) - 1:
                    revert with 'NH{q', 17
                sub_42b72afa[address(msg.sender)] = sub_42b72afa[address(msg.sender)] + msg.value - (15000000000 * 10^18 / ext_call.return_data[32] * arg1)
                call receiverAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _873 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_873] = 0
                            mem[_873 + 32] = 0
                            mem[_873 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _933 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_933] = 0
                            mem[_933 + 32] = 0
                            mem[_933 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                    if not ext_call.success:
                        revert with 0, 'purchasePack: not enough avax'
                    if sub_92735395 < arg1:
                        revert with 'NH{q', 17
                    sub_92735395 -= arg1
                    idx = 0
                    while idx < arg1:
                        if latestTokenId > -2:
                            revert with 'NH{q', 17
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor251 + 1]:
                            revert with 0, 'ERC721: token already minted'
                        stor204[stor251 + 1] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = latestTokenId + 1
                        if msg.sender:
                            tokenOfOwnerByIndex[address(msg.sender)][stor154[address(msg.sender)]] = latestTokenId + 1
                            stor202[stor251 + 1] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _874 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_874] = 0
                            mem[_874 + 32] = 0
                            mem[_874 + 64] = 0
                        else:
                            if tokenByIndex.length < 1:
                                revert with 'NH{q', 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            if stor204[stor251 + 1] >= tokenByIndex.length:
                                revert with 'NH{q', 50
                            tokenByIndex[stor204[stor251 + 1]] = tokenByIndex[tokenByIndex.length]
                            stor204[stor203[stor203.length]] = stor204[stor251 + 1]
                            stor204[stor251 + 1] = 0
                            if not tokenByIndex.length:
                                revert with 'NH{q', 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = latestTokenId + 1
                            mem[32] = 153
                            ownerOf[stor251 + 1] = msg.sender
                            emit Transfer(0, msg.sender, latestTokenId + 1);
                            if latestTokenId == -1:
                                revert with 'NH{q', 17
                            latestTokenId++
                            _934 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_934] = 0
                            mem[_934 + 32] = 0
                            mem[_934 + 64] = 0
                        mem[0] = latestTokenId + 1
                        mem[32] = 252
                        fishes[stor251 + 1].field_0 = 0
                        fishes[stor251 + 1].field_256 = 0
                        fishes[stor251 + 1].field_512 = 0
                        fishes[stor251 + 1].field_768 = 0
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
    emit 0xe4edfafc: arg1, msg.sender
}



}
