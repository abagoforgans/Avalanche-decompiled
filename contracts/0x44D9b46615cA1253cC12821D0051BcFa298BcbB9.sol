contract main {




// =====================  Runtime code  =====================


#
#  - buyFromMarket(uint256 arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - buy(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


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
uint8 stor10;
mapping of struct roleAdmin;
uint256 maxTokenCount;
uint256 mintedTokenCount;
mapping of uint256 sub_dcd6a95d;
mapping of struct stor19;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(stor10)
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

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function maxTokenCount() {
    return maxTokenCount
}

function sub_dcd6a95d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, 'Token not exists'
    return sub_dcd6a95d[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function mintedTokenCount() {
    return mintedTokenCount
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function myTokens() {
    if stor19[address(msg.sender)].field_0:
        mem[128] = stor19[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor19[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor19[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor19[address(msg.sender)].field_0, data=mem[128 len 32 * stor19[address(msg.sender)].field_0])
    mem[(32 * stor19[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * stor19[address(msg.sender)].field_0) + 160] = stor19[address(msg.sender)].field_0
    mem[(32 * stor19[address(msg.sender)].field_0) + 192 len 32 * stor19[address(msg.sender)].field_0] = mem[128 len 32 * stor19[address(msg.sender)].field_0]
    return memory
      from (32 * stor19[address(msg.sender)].field_0) + 128
       len (96 * stor19[address(msg.sender)].field_0) + 64
}

function setPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0, 'Token not exists'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0, 'You are not owner of this token'
    if arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price must be above or equal to 0'
    sub_dcd6a95d[arg1] = arg2
}

function pause() {
    if uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
        if stor10:
            revert with 0, 'Pausable: paused'
        stor10 = 1
        emit Paused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
}

function unpause() {
    if uint8(roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0):
        if not stor10:
            revert with 0, 'Pausable: not paused'
        stor10 = 0
        emit Unpaused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
}

function currentBalance() {
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        return eth.balance(this.address)
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
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
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

function transferBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if arg2 > eth.balance(this.address):
            revert with 0, 'Not enough balance in contract.'
        if eth.balance(this.address) < arg2:
            revert with 0, 'Address: insufficient balance'
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
        ('bool', 'ext_call.success')
        emit 0xa2d68069 
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
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
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

function sub_880a8183(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            _69 = sha3(mem[(32 * idx) + 128], 16)
            _70 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_70] = mem[(32 * idx) + 128]
            mem[_70 + 32] = stor[_69]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _70
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _74:
            _94 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_94 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _67 + (64 * _74) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[var34001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _112 = mem[96]
    idx = 0
    while idx < _112:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        _116 = sha3(mem[(32 * idx) + 128], 16)
        _117 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_117] = mem[(32 * idx) + 128]
        mem[_117 + 32] = stor[_116]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _117
        if idx == -1:
            revert with 'NH{q', 17
        _112 = mem[96]
        idx = idx + 1
        continue 
    _114 = mem[64]
    mem[mem[64]] = 32
    _121 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _121:
        _126 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_126 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _114 + (64 * _121) + -mem[64] + 64
}

function name() {
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

function symbol() {
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

function safeMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
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
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
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
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor15]:
        revert with 0, 'ERC721: token already minted'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor9[stor15] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = mintedTokenCount
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = mintedTokenCount
        stor7[stor15] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor15] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor15]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor15]
        stor9[stor15] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor15] = arg1
    emit Transfer(0, arg1, mintedTokenCount);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, mintedTokenCount, 128, 0
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
    mintedTokenCount++
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 37
    mem[128 len 37] = 0xfe68747470733a2f2f6173736574732e61766178746f7263682e636f6d2f746f7263686573
    if not arg1:
        mem[288 len 64] = 0xfe68747470733a2f2f6173736574732e61766178746f7263682e636f6d2f746f7263686573, mem[165 len 27]
        mem[325] = '0'
        mem[326] = '.json'
        mem[331] = 32
        mem[363] = mem[256]
        mem[395 len ceil32(mem[256])] = mem[288 len ceil32(mem[256])]
        if ceil32(mem[256]) > mem[256]:
            mem[mem[256] + 395] = 0
        return Array(len=mem[256], data=mem[395 len ceil32(mem[256])])
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
    mem[192] = s
    mem[64] = ceil32(s) + 224
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[192]:
                revert with 'NH{q', 50
            mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _133 = mem[64]
        _135 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _227 = mem[192]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
            mem[_133 + _135 + _227 + 32] = '.json'
            if ceil32(_227) <= _227:
                _295 = mem[64]
                mem[64] = _133 + _135 + _227 + 37
                mem[_133 + _135 + _227 + 37] = 32
                _311 = mem[_295]
                mem[_133 + _135 + _227 + 69] = mem[_295]
                mem[_133 + _135 + _227 + 101 len ceil32(_311)] = mem[_295 + 32 len ceil32(_311)]
                if ceil32(_311) > _311:
                    mem[_133 + _135 + _227 + _311 + 101] = 0
                return 32, mem[_133 + _135 + _227 + 69 len ceil32(_311) + 32]
            _300 = mem[64]
            mem[64] = _133 + _135 + _227 + 37
            mem[_133 + _135 + _227 + 37] = 32
            _315 = mem[_300]
            mem[_133 + _135 + _227 + 69] = mem[_300]
            mem[_133 + _135 + _227 + 101 len ceil32(_315)] = mem[_300 + 32 len ceil32(_315)]
            if ceil32(_315) > _315:
                mem[_133 + _135 + _227 + _315 + 101] = 0
            return 32, mem[_133 + _135 + _227 + 69 len ceil32(_315) + 32]
        mem[mem[64] + mem[96] + 32] = 0
        _229 = mem[192]
        mem[_133 + _135 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[_133 + _135 + _229 + 32] = '.json'
        if ceil32(_229) <= _229:
            _296 = mem[64]
            mem[64] = _133 + _135 + _229 + 37
            mem[_133 + _135 + _229 + 37] = 32
            _312 = mem[_296]
            mem[_133 + _135 + _229 + 69] = mem[_296]
            mem[_133 + _135 + _229 + 101 len ceil32(_312)] = mem[_296 + 32 len ceil32(_312)]
            if ceil32(_312) > _312:
                mem[_133 + _135 + _229 + _312 + 101] = 0
            return 32, mem[_133 + _135 + _229 + 69 len ceil32(_312) + 32]
        _302 = mem[64]
        mem[64] = _133 + _135 + _229 + 37
        mem[_133 + _135 + _229 + 37] = 32
        _316 = mem[_302]
        mem[_133 + _135 + _229 + 69] = mem[_302]
        mem[_133 + _135 + _229 + 101 len ceil32(_316)] = mem[_302 + 32 len ceil32(_316)]
        if ceil32(_316) > _316:
            mem[_133 + _135 + _229 + _316 + 101] = 0
        return 32, mem[_133 + _135 + _229 + 69 len ceil32(_316) + 32]
    mem[224 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[192]:
            revert with 'NH{q', 50
        mem[t + 223 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _134 = mem[64]
    _136 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _228 = mem[192]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
        mem[_134 + _136 + _228 + 32] = '.json'
        if ceil32(_228) <= _228:
            _297 = mem[64]
            mem[64] = _134 + _136 + _228 + 37
            mem[_134 + _136 + _228 + 37] = 32
            _313 = mem[_297]
            mem[_134 + _136 + _228 + 69] = mem[_297]
            mem[_134 + _136 + _228 + 101 len ceil32(_313)] = mem[_297 + 32 len ceil32(_313)]
            if ceil32(_313) > _313:
                mem[_134 + _136 + _228 + _313 + 101] = 0
            return 32, mem[_134 + _136 + _228 + 69 len ceil32(_313) + 32]
        _304 = mem[64]
        mem[64] = _134 + _136 + _228 + 37
        mem[_134 + _136 + _228 + 37] = 32
        _317 = mem[_304]
        mem[_134 + _136 + _228 + 69] = mem[_304]
        mem[_134 + _136 + _228 + 101 len ceil32(_317)] = mem[_304 + 32 len ceil32(_317)]
        if ceil32(_317) > _317:
            mem[_134 + _136 + _228 + _317 + 101] = 0
        return 32, mem[_134 + _136 + _228 + 69 len ceil32(_317) + 32]
    mem[mem[64] + mem[96] + 32] = 0
    _230 = mem[192]
    mem[_134 + _136 + 32 len ceil32(mem[192])] = mem[224 len ceil32(mem[192])]
    mem[_134 + _136 + _230 + 32] = '.json'
    if ceil32(_230) <= _230:
        _298 = mem[64]
        mem[64] = _134 + _136 + _230 + 37
        mem[_134 + _136 + _230 + 37] = 32
        _314 = mem[_298]
        mem[_134 + _136 + _230 + 69] = mem[_298]
        mem[_134 + _136 + _230 + 101 len ceil32(_314)] = mem[_298 + 32 len ceil32(_314)]
        if ceil32(_314) > _314:
            mem[_134 + _136 + _230 + _314 + 101] = 0
        return 32, mem[_134 + _136 + _230 + 69 len ceil32(_314) + 32]
    _306 = mem[64]
    mem[64] = _134 + _136 + _230 + 37
    mem[_134 + _136 + _230 + 37] = 32
    _318 = mem[_306]
    mem[_134 + _136 + _230 + 69] = mem[_306]
    mem[_134 + _136 + _230 + 101 len ceil32(_318)] = mem[_306 + 32 len ceil32(_318)]
    if ceil32(_318) > _318:
        mem[_134 + _136 + _230 + _318 + 101] = 0
    return 32, mem[_134 + _136 + _230 + 69 len ceil32(_318) + 32]
}

function sub_a9639206(?) {
    mem[0] = msg.sender
    mem[32] = 19
    mem[96] = stor19[address(msg.sender)].field_0
    if not stor19[address(msg.sender)].field_0:
        if stor19[address(msg.sender)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * stor19[address(msg.sender)].field_0) + 128] = stor19[address(msg.sender)].field_0
        mem[64] = (64 * stor19[address(msg.sender)].field_0) + 160
        if not stor19[address(msg.sender)].field_0:
            idx = 0
            while idx < stor19[address(msg.sender)].field_0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 16
                _40 = sha3(mem[(32 * idx) + 128], 16)
                _41 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[_41] = mem[(32 * idx) + 128]
                mem[_41 + 32] = stor[_40]
                if idx >= mem[(32 * stor19[address(msg.sender)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * stor19[address(msg.sender)].field_0) + 160] = _41
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _38 = mem[64]
            mem[mem[64]] = 32
            _45 = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
            idx = 0
            s = (32 * stor19[address(msg.sender)].field_0) + 160
            t = mem[64] + 64
            while idx < _45:
                _66 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_66 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _38 + (64 * _45) + -mem[64] + 64
        mem[64] = (64 * stor19[address(msg.sender)].field_0) + 224
        mem[(64 * stor19[address(msg.sender)].field_0) + 160] = 0
        mem[(64 * stor19[address(msg.sender)].field_0) + 192] = 0
        mem[var10001] = (64 * stor19[address(msg.sender)].field_0) + 160
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(64 * stor19[address(msg.sender)].field_0) + 160] = 0
            mem[(64 * stor19[address(msg.sender)].field_0) + 192] = 0
            mem[s + 32] = (64 * stor19[address(msg.sender)].field_0) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _114 = mem[96]
        idx = 0
        while idx < _114:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            _121 = sha3(mem[(32 * idx) + 128], 16)
            _122 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_122] = mem[(32 * idx) + 128]
            mem[_122 + 32] = stor[_121]
            if idx >= mem[(32 * stor19[address(msg.sender)].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * stor19[address(msg.sender)].field_0) + 160] = _122
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 32
        _133 = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
        idx = 0
        s = (32 * stor19[address(msg.sender)].field_0) + 160
        t = mem[64] + 64
        while idx < _133:
            _158 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_158 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _119 + (64 * _133) + -mem[64] + 64
    mem[0] = sha3(address(msg.sender), 19)
    mem[128] = stor19[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * stor19[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = stor19[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor19[address(msg.sender)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * stor19[address(msg.sender)].field_0) + 128] = stor19[address(msg.sender)].field_0
    mem[64] = (64 * stor19[address(msg.sender)].field_0) + 160
    if not stor19[address(msg.sender)].field_0:
        idx = 0
        while idx < stor19[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            _126 = sha3(mem[(32 * idx) + 128], 16)
            _127 = mem[64]
            mem[64] = mem[64] + 64
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_127] = mem[(32 * idx) + 128]
            mem[_127 + 32] = stor[_126]
            if idx >= mem[(32 * stor19[address(msg.sender)].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * stor19[address(msg.sender)].field_0) + 160] = _127
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _124 = mem[64]
        mem[mem[64]] = 32
        _134 = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
        idx = 0
        s = (32 * stor19[address(msg.sender)].field_0) + 160
        t = mem[64] + 64
        while idx < _134:
            _159 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_159 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _124 + (64 * _134) + -mem[64] + 64
    mem[64] = (64 * stor19[address(msg.sender)].field_0) + 224
    mem[(64 * stor19[address(msg.sender)].field_0) + 160] = 0
    mem[(64 * stor19[address(msg.sender)].field_0) + 192] = 0
    mem[var14001] = (64 * stor19[address(msg.sender)].field_0) + 160
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * stor19[address(msg.sender)].field_0) + 160] = 0
        mem[(64 * stor19[address(msg.sender)].field_0) + 192] = 0
        mem[s + 32] = (64 * stor19[address(msg.sender)].field_0) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _180 = mem[96]
    idx = 0
    while idx < _180:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 16
        _184 = sha3(mem[(32 * idx) + 128], 16)
        _185 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_185] = mem[(32 * idx) + 128]
        mem[_185 + 32] = stor[_184]
        if idx >= mem[(32 * stor19[address(msg.sender)].field_0) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * stor19[address(msg.sender)].field_0) + 160] = _185
        if idx == -1:
            revert with 'NH{q', 17
        _180 = mem[96]
        idx = idx + 1
        continue 
    _182 = mem[64]
    mem[mem[64]] = 32
    _189 = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
    mem[mem[64] + 32] = mem[(32 * stor19[address(msg.sender)].field_0) + 128]
    idx = 0
    s = (32 * stor19[address(msg.sender)].field_0) + 160
    t = mem[64] + 64
    while idx < _189:
        _194 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_194 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _182 + (64 * _189) + -mem[64] + 64
}



}
