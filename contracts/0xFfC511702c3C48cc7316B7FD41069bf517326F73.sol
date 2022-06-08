contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address stor1;
uint256 stor2;
array of struct stor3;
array of struct stor4;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor8;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor10;
array of uint256 tokenByIndex;
mapping of uint256 stor12;
uint256 stor13;
array of struct stor15;
uint256 royaltyValue;
address sub_4c00de82Address;
mapping of uint8 stor18;
uint256 totalMinted;
uint256 sub_e13cbe38;
address sub_05691ec8Address;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_05691ec8(?) {
    return sub_05691ec8Address
}

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

function sub_4c00de82(?) {
    return sub_4c00de82Address
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function royaltyValue() {
    return royaltyValue
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
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function totalMinted() {
    return totalMinted
}

function sub_e13cbe38(?) {
    return sub_e13cbe38
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor2 > -1 / arg2:
        revert with 0, 17
    return stor1, arg2 * stor2 / 10^18
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor8[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setRoyalties(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Ensure msg.sender has role: CLAIMER or DEFAULT_ADMIN_ROLE'
    if arg2 > 10^18:
        revert with 0, 'ERC2981Royalties: Too high'
    stor1 = arg1
    stor2 = arg2
    if not arg1:
        revert with 0, 'Royalty recipient address cannot be Zero Address'
    sub_4c00de82Address = arg1
    royaltyValue = arg2
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
    if '*U Z' == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor8[stor5[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_79fb86e8(?) {
    require calldata.size - 4 >= 32
    if roleAdmin[address(msg.sender)].field_0:
        sub_e13cbe38 = arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function changeClaimAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Ensure msg.sender has role: CLAIMER or DEFAULT_ADMIN_ROLE'
    if roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][stor21].field_0:
        roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][stor21].field_0 = 0
        emit RoleRevoked(0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5, sub_05691ec8Address, msg.sender);
    if not roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(arg1)].field_0:
        roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(arg1)].field_0 = 1
        emit RoleGranted(0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5, arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claim addresses cannot be Zero Address'
    sub_05691ec8Address = arg1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_b4fad1b5(?) {
    if stor13 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor13 = 2
    if roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(msg.sender)].field_0:
        call sub_05691ec8Address with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer Error: Check role and contract balance'
        else:
            if not ext_call.success:
                revert with 0, 'Transfer Error: Check role and contract balance'
        ('bool', 'ext_call.success')
        stor13 = 1
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
    s = 0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function withdrawERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor13 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor13 = 2
    if not roleAdmin[0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5][address(msg.sender)].field_0:
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
        s = 0xe5667d34d7ea8d6fdb3aa71a0a5b85e4cf7f68356dd003cd638556b0eea2bce5
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_05691ec8Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer Error: Check role and contract balance'
    stor13 = 1
}

function getTokensByOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = idx
            require ext_code.size(this.address)
            staticcall this.address.'/t\Y' with:
                    gas gas_remaining wei
                   args address(arg1), idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _30 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _30] = mem[ceil32(return_data.size) + 128 len 32 * _30]
        return 32, mem[mem[64] + 32 len (32 * _30) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = idx
        require ext_code.size(this.address)
        staticcall this.address.'/t\Y' with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_33]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _31 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _31] = mem[ceil32(return_data.size) + 128 len 32 * _31]
    return 32, mem[mem[64] + 32 len (32 * _31) + 32]
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
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function baseURI() {
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[stor15.length.field_1 + ceil32(stor15.length.field_1) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
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
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor8[stor5[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor12[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor175B[stor11.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor10[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor10[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1]
                stor10[stor9[address(arg1)][stor6[address(arg1)] - 1]] = stor10[arg3]
            stor10[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor6[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor6[address(arg2)]] = arg3
            stor10[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor12[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor12[arg3]] = tokenByIndex[tokenByIndex.length]
        stor12[stor11[stor11.length]] = stor12[arg3]
        stor12[arg3] = 0
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if roleAdmin[address(msg.sender)].field_0:
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor15.length = 0
                idx = 0
                while stor15.length.field_1 + 31 / 32 > idx:
                    stor15[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor15.length = 0
                idx = 0
                while stor15.length.field_1 + 31 / 32 > idx:
                    stor15[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(arg1.length) + 128] = 42
    mem[ceil32(arg1.length) + 160 len 42] = call.data[calldata.size len 42]
    if 0 >= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        revert with 0, 50
    mem[ceil32(arg1.length) + 160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        revert with 0, 50
    mem[ceil32(arg1.length) + 161 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            revert with 0, 50
        mem[idx + ceil32(arg1.length) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(arg1.length) + 224] = 66
    mem[ceil32(arg1.length) + 256 len 66] = call.data[calldata.size len 66]
    mem[ceil32(arg1.length) + 256 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[ceil32(arg1.length) + 257 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(arg1.length) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    mem[ceil32(arg1.length) + 384] = 'AccessControl: account '
    mem[ceil32(arg1.length) + 407 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 407] = ' is missing role '
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 424 len 96] = 0, mem[ceil32(arg1.length) + 257 len 95]
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 490] = 0
    mem[ceil32(arg1.length) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 106
    mem[64] = ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 490
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 494] = 32
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) <= Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        _84 = mem[ceil32(arg1.length) + 352]
        mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 526] = mem[ceil32(arg1.length) + 352]
        mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 558 len ceil32(_84)] = mem[ceil32(arg1.length) + 384 len ceil32(_84)]
        if ceil32(_84) > _84:
            mem[_84 + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 558] = 0
        revert with 0, 
                    32,
                    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 526 len ceil32(_84) + 32]
    _86 = mem[ceil32(arg1.length) + 352]
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 526] = mem[ceil32(arg1.length) + 352]
    mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 558 len ceil32(_86)] = mem[ceil32(arg1.length) + 384 len ceil32(_86)]
    if ceil32(_86) > _86:
        mem[_86 + ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 558] = 0
    revert with 0, 
                32,
                mem[ceil32(arg1.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 526 len ceil32(_86) + 32]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor15.length):
                mem[192] = Mask(248, 8, stor15.length)
            else:
                if bool(stor15.length) != 1:
                    mem[64] = 1
                    _122 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_122) > _122:
                        mem[_122 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_122) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor15.length.field_1:
                    mem[idx + 192] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor15.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor15.length.field_1 + 193] = 32
            mem[stor15.length.field_1 + 225] = mem[160]
            mem[stor15.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor15.length.field_1 + 257] = 0
            return Array(len=mem[160], data=mem[stor15.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[192] = Mask(248, 8, stor15.length)
        else:
            if bool(stor15.length) != 1:
                mem[64] = 1
                _126 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_126) > _126:
                    mem[_126 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_126) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + 192] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor15.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor15.length.field_1 + 193] = 32
        mem[stor15.length.field_1 + 225] = mem[160]
        mem[stor15.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor15.length.field_1 + 257] = 0
        return Array(len=mem[160], data=mem[stor15.length.field_1 + 257 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _359 = mem[64]
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor15.length):
                mem[mem[64] + 32] = Mask(248, 8, stor15.length)
                _385 = mem[96]
                mem[mem[64] + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _591 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 32
                    mem[mem[96] + _359 + stor15.length.field_1 + 32] = 32
                    _635 = mem[_591]
                    mem[_385 + _359 + stor15.length.field_1 + 64] = mem[_591]
                    mem[_385 + _359 + stor15.length.field_1 + 96 len ceil32(_635)] = mem[_591 + 32 len ceil32(_635)]
                    if ceil32(_635) > _635:
                        mem[_635 + _385 + _359 + stor15.length.field_1 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_635) + _385 + _359 + stor15.length.field_1 + -mem[64] + 96
                mem[mem[96] + mem[64] + stor15.length.field_1 + 32] = 0
                _592 = mem[64]
                mem[64] = _385 + _359 + stor15.length.field_1 + 32
                mem[_385 + _359 + stor15.length.field_1 + 32] = 32
                _636 = mem[_592]
                mem[_385 + _359 + stor15.length.field_1 + 64] = mem[_592]
                mem[_385 + _359 + stor15.length.field_1 + 96 len ceil32(_636)] = mem[_592 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _385 + _359 + stor15.length.field_1 + 96] = 0
                return 32, mem[_385 + _359 + stor15.length.field_1 + 64 len ceil32(_636) + 32]
            if bool(stor15.length) != 1:
                _393 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_393) <= _393:
                    _593 = mem[64]
                    mem[64] = _393
                    mem[_393] = 32
                    _637 = mem[_593]
                    mem[_393 + 32] = mem[_593]
                    mem[_393 + 64 len ceil32(_637)] = mem[_593 + 32 len ceil32(_637)]
                    if ceil32(_637) > _637:
                        mem[_637 + _393 + 64] = 0
                    return 32, mem[_393 + 32 len ceil32(_637) + 32]
                mem[_393] = 0
                _594 = mem[64]
                mem[64] = _393
                mem[_393] = 32
                _638 = mem[_594]
                mem[_393 + 32] = mem[_594]
                mem[_393 + 64 len ceil32(_638)] = mem[_594 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _393 + 64] = 0
                return 32, mem[_393 + 32 len ceil32(_638) + 32]
            mem[0] = 15
            idx = 0
            s = 0
            while idx < stor15.length.field_1:
                mem[idx + _359 + 32] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _587 = mem[96]
            mem[_359 + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_587) <= _587:
                _771 = mem[64]
                mem[64] = _587 + _359 + stor15.length.field_1 + 32
                mem[_587 + _359 + stor15.length.field_1 + 32] = 32
                _815 = mem[_771]
                mem[_587 + _359 + stor15.length.field_1 + 64] = mem[_771]
                mem[_587 + _359 + stor15.length.field_1 + 96 len ceil32(_815)] = mem[_771 + 32 len ceil32(_815)]
                if ceil32(_815) > _815:
                    mem[_815 + _587 + _359 + stor15.length.field_1 + 96] = 0
                return 32, mem[_587 + _359 + stor15.length.field_1 + 64 len ceil32(_815) + 32]
            mem[_587 + _359 + stor15.length.field_1 + 32] = 0
            _772 = mem[64]
            mem[64] = _587 + _359 + stor15.length.field_1 + 32
            mem[_587 + _359 + stor15.length.field_1 + 32] = 32
            _816 = mem[_772]
            mem[_587 + _359 + stor15.length.field_1 + 64] = mem[_772]
            mem[_587 + _359 + stor15.length.field_1 + 96 len ceil32(_816)] = mem[_772 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _587 + _359 + stor15.length.field_1 + 96] = 0
            return 32, mem[_587 + _359 + stor15.length.field_1 + 64 len ceil32(_816) + 32]
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[mem[64] + 32] = Mask(248, 8, stor15.length)
            _394 = mem[96]
            mem[mem[64] + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _595 = mem[64]
                mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 32
                mem[mem[96] + _359 + stor15.length.field_1 + 32] = 32
                _639 = mem[_595]
                mem[_394 + _359 + stor15.length.field_1 + 64] = mem[_595]
                mem[_394 + _359 + stor15.length.field_1 + 96 len ceil32(_639)] = mem[_595 + 32 len ceil32(_639)]
                if ceil32(_639) > _639:
                    mem[_639 + _394 + _359 + stor15.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_639) + _394 + _359 + stor15.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor15.length.field_1 + 32] = 0
            _596 = mem[64]
            mem[64] = _394 + _359 + stor15.length.field_1 + 32
            mem[_394 + _359 + stor15.length.field_1 + 32] = 32
            _640 = mem[_596]
            mem[_394 + _359 + stor15.length.field_1 + 64] = mem[_596]
            mem[_394 + _359 + stor15.length.field_1 + 96 len ceil32(_640)] = mem[_596 + 32 len ceil32(_640)]
            if ceil32(_640) > _640:
                mem[_640 + _394 + _359 + stor15.length.field_1 + 96] = 0
            return 32, mem[_394 + _359 + stor15.length.field_1 + 64 len ceil32(_640) + 32]
        if bool(stor15.length) != 1:
            _399 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_399) <= _399:
                _597 = mem[64]
                mem[64] = _399
                mem[_399] = 32
                _641 = mem[_597]
                mem[_399 + 32] = mem[_597]
                mem[_399 + 64 len ceil32(_641)] = mem[_597 + 32 len ceil32(_641)]
                if ceil32(_641) > _641:
                    mem[_641 + _399 + 64] = 0
                return 32, mem[_399 + 32 len ceil32(_641) + 32]
            mem[_399] = 0
            _598 = mem[64]
            mem[64] = _399
            mem[_399] = 32
            _642 = mem[_598]
            mem[_399 + 32] = mem[_598]
            mem[_399 + 64 len ceil32(_642)] = mem[_598 + 32 len ceil32(_642)]
            if ceil32(_642) > _642:
                mem[_642 + _399 + 64] = 0
            return 32, mem[_399 + 32 len ceil32(_642) + 32]
        mem[0] = 15
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + _359 + 32] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _588 = mem[96]
        mem[_359 + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_588) <= _588:
            _781 = mem[64]
            mem[64] = _588 + _359 + stor15.length.field_1 + 32
            mem[_588 + _359 + stor15.length.field_1 + 32] = 32
            _817 = mem[_781]
            mem[_588 + _359 + stor15.length.field_1 + 64] = mem[_781]
            mem[_588 + _359 + stor15.length.field_1 + 96 len ceil32(_817)] = mem[_781 + 32 len ceil32(_817)]
            if ceil32(_817) > _817:
                mem[_817 + _588 + _359 + stor15.length.field_1 + 96] = 0
            return 32, mem[_588 + _359 + stor15.length.field_1 + 64 len ceil32(_817) + 32]
        mem[_588 + _359 + stor15.length.field_1 + 32] = 0
        _782 = mem[64]
        mem[64] = _588 + _359 + stor15.length.field_1 + 32
        mem[_588 + _359 + stor15.length.field_1 + 32] = 32
        _818 = mem[_782]
        mem[_588 + _359 + stor15.length.field_1 + 64] = mem[_782]
        mem[_588 + _359 + stor15.length.field_1 + 96 len ceil32(_818)] = mem[_782 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _588 + _359 + stor15.length.field_1 + 96] = 0
        return 32, mem[_588 + _359 + stor15.length.field_1 + 64 len ceil32(_818) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _360 = mem[64]
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor15.length):
            mem[mem[64] + 32] = Mask(248, 8, stor15.length)
            _387 = mem[96]
            mem[mem[64] + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _599 = mem[64]
                mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 32
                mem[mem[96] + _360 + stor15.length.field_1 + 32] = 32
                _643 = mem[_599]
                mem[_387 + _360 + stor15.length.field_1 + 64] = mem[_599]
                mem[_387 + _360 + stor15.length.field_1 + 96 len ceil32(_643)] = mem[_599 + 32 len ceil32(_643)]
                if ceil32(_643) > _643:
                    mem[_643 + _387 + _360 + stor15.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_643) + _387 + _360 + stor15.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor15.length.field_1 + 32] = 0
            _600 = mem[64]
            mem[64] = _387 + _360 + stor15.length.field_1 + 32
            mem[_387 + _360 + stor15.length.field_1 + 32] = 32
            _644 = mem[_600]
            mem[_387 + _360 + stor15.length.field_1 + 64] = mem[_600]
            mem[_387 + _360 + stor15.length.field_1 + 96 len ceil32(_644)] = mem[_600 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _387 + _360 + stor15.length.field_1 + 96] = 0
            return 32, mem[_387 + _360 + stor15.length.field_1 + 64 len ceil32(_644) + 32]
        if bool(stor15.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_396) <= _396:
                _601 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _645 = mem[_601]
                mem[_396 + 32] = mem[_601]
                mem[_396 + 64 len ceil32(_645)] = mem[_601 + 32 len ceil32(_645)]
                if ceil32(_645) > _645:
                    mem[_645 + _396 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_645) + 32]
            mem[_396] = 0
            _602 = mem[64]
            mem[64] = _396
            mem[_396] = 32
            _646 = mem[_602]
            mem[_396 + 32] = mem[_602]
            mem[_396 + 64 len ceil32(_646)] = mem[_602 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _396 + 64] = 0
            return 32, mem[_396 + 32 len ceil32(_646) + 32]
        mem[0] = 15
        idx = 0
        s = 0
        while idx < stor15.length.field_1:
            mem[idx + _360 + 32] = stor15[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _589 = mem[96]
        mem[_360 + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_589) <= _589:
            _791 = mem[64]
            mem[64] = _589 + _360 + stor15.length.field_1 + 32
            mem[_589 + _360 + stor15.length.field_1 + 32] = 32
            _819 = mem[_791]
            mem[_589 + _360 + stor15.length.field_1 + 64] = mem[_791]
            mem[_589 + _360 + stor15.length.field_1 + 96 len ceil32(_819)] = mem[_791 + 32 len ceil32(_819)]
            if ceil32(_819) > _819:
                mem[_819 + _589 + _360 + stor15.length.field_1 + 96] = 0
            return 32, mem[_589 + _360 + stor15.length.field_1 + 64 len ceil32(_819) + 32]
        mem[_589 + _360 + stor15.length.field_1 + 32] = 0
        _792 = mem[64]
        mem[64] = _589 + _360 + stor15.length.field_1 + 32
        mem[_589 + _360 + stor15.length.field_1 + 32] = 32
        _820 = mem[_792]
        mem[_589 + _360 + stor15.length.field_1 + 64] = mem[_792]
        mem[_589 + _360 + stor15.length.field_1 + 96 len ceil32(_820)] = mem[_792 + 32 len ceil32(_820)]
        if ceil32(_820) > _820:
            mem[_820 + _589 + _360 + stor15.length.field_1 + 96] = 0
        return 32, mem[_589 + _360 + stor15.length.field_1 + 64 len ceil32(_820) + 32]
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor15.length):
        mem[mem[64] + 32] = Mask(248, 8, stor15.length)
        _397 = mem[96]
        mem[mem[64] + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _603 = mem[64]
            mem[64] = mem[96] + mem[64] + stor15.length.field_1 + 32
            mem[mem[96] + _360 + stor15.length.field_1 + 32] = 32
            _647 = mem[_603]
            mem[_397 + _360 + stor15.length.field_1 + 64] = mem[_603]
            mem[_397 + _360 + stor15.length.field_1 + 96 len ceil32(_647)] = mem[_603 + 32 len ceil32(_647)]
            if ceil32(_647) > _647:
                mem[_647 + _397 + _360 + stor15.length.field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_647) + _397 + _360 + stor15.length.field_1 + -mem[64] + 96
        mem[mem[96] + mem[64] + stor15.length.field_1 + 32] = 0
        _604 = mem[64]
        mem[64] = _397 + _360 + stor15.length.field_1 + 32
        mem[_397 + _360 + stor15.length.field_1 + 32] = 32
        _648 = mem[_604]
        mem[_397 + _360 + stor15.length.field_1 + 64] = mem[_604]
        mem[_397 + _360 + stor15.length.field_1 + 96 len ceil32(_648)] = mem[_604 + 32 len ceil32(_648)]
        if ceil32(_648) > _648:
            mem[_648 + _397 + _360 + stor15.length.field_1 + 96] = 0
        return 32, mem[_397 + _360 + stor15.length.field_1 + 64 len ceil32(_648) + 32]
    if bool(stor15.length) != 1:
        _400 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_400) <= _400:
            _605 = mem[64]
            mem[64] = _400
            mem[_400] = 32
            _649 = mem[_605]
            mem[_400 + 32] = mem[_605]
            mem[_400 + 64 len ceil32(_649)] = mem[_605 + 32 len ceil32(_649)]
            if ceil32(_649) > _649:
                mem[_649 + _400 + 64] = 0
            return 32, mem[_400 + 32 len ceil32(_649) + 32]
        mem[_400] = 0
        _606 = mem[64]
        mem[64] = _400
        mem[_400] = 32
        _650 = mem[_606]
        mem[_400 + 32] = mem[_606]
        mem[_400 + 64 len ceil32(_650)] = mem[_606 + 32 len ceil32(_650)]
        if ceil32(_650) > _650:
            mem[_650 + _400 + 64] = 0
        return 32, mem[_400 + 32 len ceil32(_650) + 32]
    mem[0] = 15
    idx = 0
    s = 0
    while idx < stor15.length.field_1:
        mem[idx + _360 + 32] = stor15[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _590 = mem[96]
    mem[_360 + stor15.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_590) <= _590:
        _801 = mem[64]
        mem[64] = _590 + _360 + stor15.length.field_1 + 32
        mem[_590 + _360 + stor15.length.field_1 + 32] = 32
        _821 = mem[_801]
        mem[_590 + _360 + stor15.length.field_1 + 64] = mem[_801]
        mem[_590 + _360 + stor15.length.field_1 + 96 len ceil32(_821)] = mem[_801 + 32 len ceil32(_821)]
        if ceil32(_821) > _821:
            mem[_821 + _590 + _360 + stor15.length.field_1 + 96] = 0
        return 32, mem[_590 + _360 + stor15.length.field_1 + 64 len ceil32(_821) + 32]
    mem[_590 + _360 + stor15.length.field_1 + 32] = 0
    _802 = mem[64]
    mem[64] = _590 + _360 + stor15.length.field_1 + 32
    mem[_590 + _360 + stor15.length.field_1 + 32] = 32
    _822 = mem[_802]
    mem[_590 + _360 + stor15.length.field_1 + 64] = mem[_802]
    mem[_590 + _360 + stor15.length.field_1 + 96 len ceil32(_822)] = mem[_802 + 32 len ceil32(_822)]
    if ceil32(_822) > _822:
        mem[_822 + _590 + _360 + stor15.length.field_1 + 96] = 0
    return 32, mem[_590 + _360 + stor15.length.field_1 + 64 len ceil32(_822) + 32]
}

function sub_39d5d6a0(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(('cd', 100).length) + 160 < 128 or (32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[(32 * ('cd', 36).length) + 160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[(32 * ('cd', 36).length) + ('cd', 100).length + 160] = 0
    if cd[68] > eth.balance(msg.sender):
        revert with 0, 'Insufficient balance'
    if msg.value < cd[68]:
        revert with 0, 'Check price and msg.value'
    if cd[4] > !sub_e13cbe38:
        revert with 0, 17
    if block.timestamp >= cd[4] + sub_e13cbe38:
        revert with 0, 'Claim expired'
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 192] = cd[4]
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 224] = msg.sender
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 256] = 128
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 320] = ('cd', 36).length
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 352 len 32 * ('cd', 36).length] = mem[128 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 288] = cd[68]
    mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 160] = (32 * ('cd', 36).length) + 160
    _681 = sha3(mem[(32 * ('cd', 36).length) + ceil32(('cd', 100).length) + 192 len Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[(32 * ('cd', 36).length) + ('cd', 100).length + 192 len -('cd', 100).length + ceil32(('cd', 100).length)]])
    mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 384] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 412] = _681
    mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 352] = 60
    if 65 == ('cd', 100).length:
        if mem[(32 * ('cd', 36).length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 100).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[(32 * ('cd', 36).length) + 192]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if 27 == uint8((bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27):
        mem[64] = (64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 476
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 476] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _681)
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 508] = uint8((bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27)
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 540] = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 572] = uint255(mem[(32 * ('cd', 36).length) + 192])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _681), (bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27 << 248, mem[(32 * ('cd', 36).length) + 160], uint255(mem[(32 * ('cd', 36).length) + 192])) 
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 444] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if not roleAdmin[address(signer)].field_0:
            revert with 0, 'Bad signature'
        mem[0] = _681
        mem[32] = 18
        if stor18[_681]:
            revert with 0, 'Already minted'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1013 = mem[(32 * idx) + 128]
            _1016 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1016] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1013]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1013] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1013
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1013
                    mem[32] = 5
                    ownerOf[_1013] = msg.sender
                    emit Transfer(0, msg.sender, _1013);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1013
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1016 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1013, 128, 0
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
                        _1307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1307] == Mask(32, 224, mem[_1307])
                        if Mask(32, 224, mem[_1307]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[address(msg.sender)]] = _1013
                    stor10[_1013] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1013
                    mem[32] = 5
                    ownerOf[_1013] = msg.sender
                    emit Transfer(0, msg.sender, _1013);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1013
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1016 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1013, 128, 0
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
                        _1309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1309] == Mask(32, 224, mem[_1309])
                        if Mask(32, 224, mem[_1309]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1013] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1013]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1013]
                stor12[_1013] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1013
                mem[32] = 5
                ownerOf[_1013] = msg.sender
                emit Transfer(0, msg.sender, _1013);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1013
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1016 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1013, 128, 0
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
                    _1311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1311] == Mask(32, 224, mem[_1311])
                    if Mask(32, 224, mem[_1311]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _681
            mem[32] = 18
            stor18[_681] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 128
        _1015 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _1015] = mem[128 len 32 * _1015]
        mem[mem[64] + 64] = cd[4]
        mem[mem[64] + 96] = cd[68]
        emit 0xab498de2: msg.sender, 128, cd[4], cd[68], mem[mem[64] + 128 len (32 * _1015) + 32]
    else:
        if uint8((bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = (64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 476
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 476] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _681)
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 508] = uint8((bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27)
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 540] = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 572] = uint255(mem[(32 * ('cd', 36).length) + 192])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _681), (bool(mem[(32 * ('cd', 36).length) + 192]) >> 255) + 27 << 248, mem[(32 * ('cd', 36).length) + 160], uint255(mem[(32 * ('cd', 36).length) + 192])) 
        mem[(64 * ('cd', 36).length) + ceil32(('cd', 100).length) + 444] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if not roleAdmin[address(signer)].field_0:
            revert with 0, 'Bad signature'
        mem[0] = _681
        mem[32] = 18
        if stor18[_681]:
            revert with 0, 'Already minted'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1014 = mem[(32 * idx) + 128]
            _1018 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1018] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1014]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1014] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1014
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1014
                    mem[32] = 5
                    ownerOf[_1014] = msg.sender
                    emit Transfer(0, msg.sender, _1014);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1014
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1018 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1014, 128, 0
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
                        _1313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1313] == Mask(32, 224, mem[_1313])
                        if Mask(32, 224, mem[_1313]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[address(msg.sender)]] = _1014
                    stor10[_1014] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1014
                    mem[32] = 5
                    ownerOf[_1014] = msg.sender
                    emit Transfer(0, msg.sender, _1014);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1014
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1018 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1014, 128, 0
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
                        _1315 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1315] == Mask(32, 224, mem[_1315])
                        if Mask(32, 224, mem[_1315]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1014] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1014]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1014]
                stor12[_1014] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1014
                mem[32] = 5
                ownerOf[_1014] = msg.sender
                emit Transfer(0, msg.sender, _1014);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1014
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1018 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1014, 128, 0
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
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1317] == Mask(32, 224, mem[_1317])
                    if Mask(32, 224, mem[_1317]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _681
            mem[32] = 18
            stor18[_681] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 128
        _1017 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _1017] = mem[128 len 32 * _1017]
        mem[mem[64] + 64] = cd[4]
        mem[mem[64] + 96] = cd[68]
        emit 0xab498de2: msg.sender, 128, cd[4], cd[68], mem[mem[64] + 128 len (32 * _1017) + 32]
    if totalMinted > !mem[96]:
        revert with 0, 17
    totalMinted += mem[96]
}

function sub_5f140e10(?) {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 128 < 96 or (32 * ('cd', 68).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    t = 128
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(('cd', 132).length) + 160 < 128 or (32 * ('cd', 68).length) + ceil32(('cd', 132).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[(32 * ('cd', 68).length) + 160 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[(32 * ('cd', 68).length) + ('cd', 132).length + 160] = 0
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + 164] = msg.sender
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0, ext_call.return_data[4 len 28] < cd[100]:
        revert with 0, 'Insufficient balance'
    if cd[4] > !sub_e13cbe38:
        revert with 0, 17
    if block.timestamp >= cd[4] + sub_e13cbe38:
        revert with 0, 'Claim expired'
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 192] = cd[4]
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 224] = address(cd[36])
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 256] = msg.sender
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 288] = 160
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 352] = ('cd', 68).length
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 384 len 32 * ('cd', 68).length] = mem[128 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 320] = cd[100]
    mem[(32 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 160] = (32 * ('cd', 68).length) + 192
    _709 = sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])
    mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 416] = '\x19Ethereum Signed Message:\n32'
    mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 444] = sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])
    mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 384] = 60
    if 65 == ('cd', 132).length:
        if mem[(32 * ('cd', 68).length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 132).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[(32 * ('cd', 68).length) + 192]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if 27 == uint8((bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27):
        mem[64] = (64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 508
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 508] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100]))
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 540] = uint8((bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27)
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 572] = mem[(32 * ('cd', 68).length) + 160]
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 604] = uint255(mem[(32 * ('cd', 68).length) + 192])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])), (bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 160], uint255(mem[(32 * ('cd', 68).length) + 192])) 
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 476] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if not roleAdmin[address(signer)].field_0:
            revert with 0, 'Bad signature'
        mem[0] = sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])
        mem[32] = 18
        if stor18[cd[4]][address(cd[36])][msg.sender][Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length])][cd[100]]:
            revert with 0, 'Already minted'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1053 = mem[(32 * idx) + 128]
            _1056 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1056] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1053]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1053] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1053
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1053
                    mem[32] = 5
                    ownerOf[_1053] = msg.sender
                    emit Transfer(0, msg.sender, _1053);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1053
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1056 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1053, 128, 0
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
                        _1361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1361] == Mask(32, 224, mem[_1361])
                        if Mask(32, 224, mem[_1361]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[address(msg.sender)]] = _1053
                    stor10[_1053] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1053
                    mem[32] = 5
                    ownerOf[_1053] = msg.sender
                    emit Transfer(0, msg.sender, _1053);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1053
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1056 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1053, 128, 0
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
                        _1363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1363] == Mask(32, 224, mem[_1363])
                        if Mask(32, 224, mem[_1363]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1053] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1053]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1053]
                stor12[_1053] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1053
                mem[32] = 5
                ownerOf[_1053] = msg.sender
                emit Transfer(0, msg.sender, _1053);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1053
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1056 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1053, 128, 0
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
                    _1365 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1365] == Mask(32, 224, mem[_1365])
                    if Mask(32, 224, mem[_1365]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _709
            mem[32] = 18
            stor18[_709] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 128
        _1055 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _1055] = mem[128 len 32 * _1055]
        mem[mem[64] + 64] = cd[4]
        mem[mem[64] + 96] = cd[100]
        emit 0xab498de2: msg.sender, 128, cd[4], cd[100], mem[mem[64] + 128 len (32 * _1055) + 32]
        if totalMinted > !mem[96]:
            revert with 0, 17
        totalMinted += mem[96]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1399 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1399] == bool(mem[_1399])
        if not mem[_1399]:
            revert with 0, 'Transfer Error: Check role and contract balance'
    else:
        if uint8((bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = (64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 508
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 508] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100]))
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 540] = uint8((bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27)
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 572] = mem[(32 * ('cd', 68).length) + 160]
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 604] = uint255(mem[(32 * ('cd', 68).length) + 192])
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])), (bool(mem[(32 * ('cd', 68).length) + 192]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 160], uint255(mem[(32 * ('cd', 68).length) + 192])) 
        mem[(64 * ('cd', 68).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 476] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if not roleAdmin[address(signer)].field_0:
            revert with 0, 'Bad signature'
        mem[0] = sha3(cd[4], address(cd[36]), msg.sender, Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length]), cd[100])
        mem[32] = 18
        if stor18[cd[4]][address(cd[36])][msg.sender][Array(len=('cd', 68).length, data=mem[128 len 32 * ('cd', 68).length])][cd[100]]:
            revert with 0, 'Already minted'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1054 = mem[(32 * idx) + 128]
            _1058 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1058] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1054]:
                revert with 0, 'ERC721: token already minted'
            stor12[_1054] = tokenByIndex.length
            tokenByIndex.length++
            stor175B[stor11.length] = _1054
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1054
                    mem[32] = 5
                    ownerOf[_1054] = msg.sender
                    emit Transfer(0, msg.sender, _1054);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1054
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1058 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1054, 128, 0
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
                        _1367 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1367] == Mask(32, 224, mem[_1367])
                        if Mask(32, 224, mem[_1367]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor6[address(msg.sender)]] = _1054
                    stor10[_1054] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = _1054
                    mem[32] = 5
                    ownerOf[_1054] = msg.sender
                    emit Transfer(0, msg.sender, _1054);
                    if ext_code.size(msg.sender):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = _1054
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _1058 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, _1054, 128, 0
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
                        _1369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1369] == Mask(32, 224, mem[_1369])
                        if Mask(32, 224, mem[_1369]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor12[_1054] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor12[_1054]] = tokenByIndex[tokenByIndex.length]
                stor12[stor11[stor11.length]] = stor12[_1054]
                stor12[_1054] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = _1054
                mem[32] = 5
                ownerOf[_1054] = msg.sender
                emit Transfer(0, msg.sender, _1054);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = _1054
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _1058 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, _1054, 128, 0
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
                    _1371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1371] == Mask(32, 224, mem[_1371])
                    if Mask(32, 224, mem[_1371]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            mem[0] = _709
            mem[32] = 18
            stor18[_709] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = 128
        _1057 = mem[96]
        mem[mem[64] + 128] = mem[96]
        mem[mem[64] + 160 len 32 * _1057] = mem[128 len 32 * _1057]
        mem[mem[64] + 64] = cd[4]
        mem[mem[64] + 96] = cd[100]
        emit 0xab498de2: msg.sender, 128, cd[4], cd[100], mem[mem[64] + 128 len (32 * _1057) + 32]
        if totalMinted > !mem[96]:
            revert with 0, 17
        totalMinted += mem[96]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[100]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1412 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1412] == bool(mem[_1412])
        if not mem[_1412]:
            revert with 0, 'Transfer Error: Check role and contract balance'
}



}
