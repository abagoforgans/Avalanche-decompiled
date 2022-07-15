contract main {




// =====================  Runtime code  =====================


#
#  - draw()
#  - sub_7708da48(?)
#  - revokeRole(bytes32 arg1, address arg2)
#  - _fallback()
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
mapping of struct roleAdmin;
uint256 stor12;
mapping of uint8 assetType;
address stor14;
address stor15;
address stor16;
address stor20;
address oracleAddress;
array of struct stor22;
uint256 price;
mapping of struct stor24;
mapping of uint256 sub_e518867b;
mapping of uint8 stor26;
mapping of uint256 sub_11ab39a8;
mapping of uint256 sub_653e3b20;
uint256 stor29;
uint256 stor30;
uint256 stor31;
array of uint256 sub_a86932c5;
uint256 stor33;
uint256 stor34;
array of uint256 stor91133936741313613138979099233183624079145362272383890875495047371972076398267;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_11ab39a8(?) {
    require calldata.size - 4 >= 64
    require arg2 < 3
    return sub_11ab39a8[arg1][arg2]
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2478239a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor26[arg1])
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

function sub_653e3b20(?) {
    require calldata.size - 4 >= 32
    return sub_653e3b20[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function getAssetType(uint256 arg1) {
    require calldata.size - 4 >= 32
    if uint8(assetType[arg1]) >= 3:
        revert with 0, 33
    return uint8(assetType[arg1])
}

function price() {
    return price
}

function sub_a86932c5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a86932c5.length
    return sub_a86932c5[arg1]
}

function sub_e518867b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_e518867b[arg1[all]]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function sub_ef24822f(?) {
    return sub_a86932c5.length
}

function sub_32b7e381(?) {
    if stor33 > !stor34:
        revert with 0, 17
    return (stor33 + stor34)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getOracleFee() {
    call oracleAddress.getFee() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_00859249(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26[address(arg1)] = uint8(bool(arg2))
}

function sub_99ba9578(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function sub_c6eac296(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg2), arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_dbb10085(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor20, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_26787cd7(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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

function sub_050c9cee(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 25
    if not sub_a86932c5.length:
        revert with 0, 18
    if block.timestamp < stor34:
        revert with 0, 17
    # nil
    if stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] <= 0:
    else:
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function _claimFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = 0
    stor30 = 0
    stor31 = 0
    if stor29:
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor29
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    if stor30:
        call stor15.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    if stor31:
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor31
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor6[stor3[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor3[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor3[arg1]] - 1 != stor8[arg1]:
            tokenOfOwnerByIndex[stor3[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
            stor8[stor7[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor8[arg1]
        stor8[arg1] = 0
        tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor10[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg1]
    stor10[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function safeMint(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 3
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
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
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
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
    stor12++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor10[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = stor12
            stor8[stor12] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[stor12]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor12]
        stor10[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor12] = arg1
    emit Transfer(0, arg1, stor12);
    if ext_code.size(arg1):
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor12, 128, 0
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
    if arg2 > 2:
        revert with 0, 33
    uint256(assetType[stor12]) = arg2 or Mask(248, 8, uint256(assetType[stor12]))
    return stor12
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function sub_93bcd4d4(?) {
    require calldata.size - 4 >= 32
    if bool(stor24[arg1].field_512):
        if not bool(stor24[arg1].field_512) - (uint255(stor24[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if bool(stor24[arg1].field_512):
            if not bool(stor24[arg1].field_512) - (uint255(stor24[arg1].field_512) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor24[arg1].field_512):
                if 31 >= uint255(stor24[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor24[arg1].field_520)
                else:
                    mem[128] = stor24[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor24[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor24[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not bool(stor24[arg1].field_512) - (stor24[arg1].field_513 % 128 < 32):
                revert with 0, 34
            if stor24[arg1].field_513 % 128:
                if 31 >= stor24[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor24[arg1].field_520)
                else:
                    mem[128] = stor24[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor24[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor24[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint8(stor24[arg1].field_16) >= 3:
            revert with 0, 33
        return bool(uint8(stor24[arg1].field_0)), 
               bool(uint8(stor24[arg1].field_8)),
               uint8(stor24[arg1].field_0),
               stor24[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor24[arg1].field_512), data=mem[128 len ceil32(uint255(stor24[arg1].field_512) * 0.5)]),
               stor24[arg1].field_768
    if not bool(stor24[arg1].field_512) - (stor24[arg1].field_513 % 128 < 32):
        revert with 0, 34
    if bool(stor24[arg1].field_512):
        if not bool(stor24[arg1].field_512) - (uint255(stor24[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor24[arg1].field_512):
            if 31 >= uint255(stor24[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor24[arg1].field_520)
            else:
                mem[128] = stor24[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor24[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor24[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not bool(stor24[arg1].field_512) - (stor24[arg1].field_513 % 128 < 32):
            revert with 0, 34
        if stor24[arg1].field_513 % 128:
            if 31 >= stor24[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor24[arg1].field_520)
            else:
                mem[128] = stor24[arg1][2].field_0
                idx = 128
                s = 0
                while stor24[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor24[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if uint8(stor24[arg1].field_16) >= 3:
        revert with 0, 33
    return bool(uint8(stor24[arg1].field_0)), 
           bool(uint8(stor24[arg1].field_8)),
           uint8(stor24[arg1].field_0),
           stor24[arg1].field_256,
           Array(len=stor24[arg1].field_512 % 128, data=mem[128 len ceil32(stor24[arg1].field_513 % 128)]),
           stor24[arg1].field_768
}

function name() {
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
            revert with 0, 34
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
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor2.length):
        if not bool(stor2.length) - (uint255(stor2.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor2.length):
            if not bool(stor2.length) - (uint255(stor2.length) * 0.5 < 32):
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
            if not bool(stor2.length) - (stor2.length.field_1 % 128 < 32):
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
    if not bool(stor2.length) - (stor2.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor2.length):
        if not bool(stor2.length) - (uint255(stor2.length) * 0.5 < 32):
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
        if not bool(stor2.length) - (stor2.length.field_1 % 128 < 32):
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function sub_8997ce4e(?) {
    if bool(stor22.length):
        if not bool(stor22.length) - (uint255(stor22.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor22.length):
            if not bool(stor22.length) - (uint255(stor22.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor22.length):
                if 31 < uint255(stor22.length) * 0.5:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor22.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor22.length.field_8)
        else:
            if not bool(stor22.length) - (stor22.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor22.length.field_1 % 128:
                if 31 < stor22.length.field_1 % 128:
                    mem[128] = uint256(stor22.field_0)
                    idx = 128
                    s = 0
                    while stor22.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor22[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor22.length.field_8)
        mem[ceil32(uint255(stor22.length) * 0.5) + 192 len ceil32(uint255(stor22.length) * 0.5)] = mem[128 len ceil32(uint255(stor22.length) * 0.5)]
        if ceil32(uint255(stor22.length) * 0.5) > uint255(stor22.length) * 0.5:
            mem[(uint255(stor22.length) * 0.5) + ceil32(uint255(stor22.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor22.length), data=mem[128 len ceil32(uint255(stor22.length) * 0.5)], mem[(2 * ceil32(uint255(stor22.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor22.length) * 0.5)]), 
    if not bool(stor22.length) - (stor22.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor22.length):
        if not bool(stor22.length) - (uint255(stor22.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor22.length):
            if 31 < uint255(stor22.length) * 0.5:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while (uint255(stor22.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor22.length.field_8)
    else:
        if not bool(stor22.length) - (stor22.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor22.length.field_1 % 128:
            if 31 < stor22.length.field_1 % 128:
                mem[128] = uint256(stor22.field_0)
                idx = 128
                s = 0
                while stor22.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor22[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor22.length.field_8)
    mem[ceil32(stor22.length.field_1 % 128) + 192 len ceil32(stor22.length.field_1 % 128)] = mem[128 len ceil32(stor22.length.field_1 % 128)]
    if ceil32(stor22.length.field_1 % 128) > stor22.length.field_1 % 128:
        mem[stor22.length.field_1 % 128 + ceil32(stor22.length.field_1 % 128) + 192] = 0
    return Array(len=stor22.length % 128, data=mem[128 len ceil32(stor22.length.field_1 % 128)], mem[(2 * ceil32(stor22.length.field_1 % 128)) + 192 len 2 * ceil32(stor22.length.field_1 % 128)]), 
}

function sub_fbe14ce9(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor3[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor3[arg1]] - 1 != stor8[arg1]:
            tokenOfOwnerByIndex[stor3[arg1]][stor8[arg1]] = tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1]
            stor8[stor7[stor3[arg1]][stor4[stor3[arg1]] - 1]] = stor8[arg1]
        stor8[arg1] = 0
        tokenOfOwnerByIndex[stor3[arg1]][stor4[stor3[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor10[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg1]
    stor10[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor3[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if uint8(assetType[arg1]) > 2:
        revert with 0, 33
    if not uint8(assetType[arg1]):
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * price
    else:
        if uint8(assetType[arg1]) > 2:
            revert with 0, 33
        if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 0, 17
        if uint8(assetType[arg1]) - 2:
            call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor15, 10^6 * price, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            call stor15.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^6 * price
        else:
            call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args stor16, 10^6 * price, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            call stor16.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^6 * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    if sub_a86932c5.length < 1:
        revert with 0, 17
    if sub_a86932c5.length - 1 >= sub_a86932c5.length:
        revert with 0, 50
    if not sub_a86932c5.length:
        revert with 0, 49
    sub_a86932c5[sub_a86932c5.length] = 0
    sub_a86932c5.length--
    idx = 0
    while idx < sub_a86932c5.length:
        mem[0] = 32
        if sub_a86932c5[idx] - arg1:
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_a86932c5.length:
            revert with 0, 50
        sub_a86932c5[idx] = sub_a86932c5[sub_a86932c5.length]
}

function sub_a2b450a0(?) {
    require calldata.size - 4 >= 128
    require arg2 < 3
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 2:
        revert with 0, 33
    if not arg2:
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require ext_code.size(stor20)
        call stor20.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args stor14, arg3, address(this.address), 0
    else:
        if arg2 > 2:
            revert with 0, 33
        if arg2 - 2:
            call stor16.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require ext_code.size(stor20)
            call stor20.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor16, arg3, address(this.address), 0
        else:
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require ext_code.size(stor20)
            call stor20.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor15, arg3, address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 2:
        revert with 0, 33
    uint8(stor24[arg1].field_0) = 1
    Mask(248, 0, stor24[arg1].field_8) = 0
    Mask(240, 0, stor24[arg1].field_16) = 0
    if arg2 > 2:
        revert with 0, 33
    uint8(stor24[arg1].field_0) = 1
    uint8(stor24[arg1].field_8) = 0
    Mask(240, 0, stor24[arg1].field_16) = Mask(240, 0, arg2)
    Mask(232, 0, stor24[arg1].field_24) = 0
    Mask(232, 0, stor24[arg1].field_24) = 0
    stor24[arg1].field_256 = arg3
    if bool(stor24[arg1].field_512):
        if not bool(stor24[arg1].field_512) - (uint255(stor24[arg1].field_512) * 0.5 < 32):
            revert with 0, 34
        if arg4.length:
            stor24[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor24[arg1].field_512 = 0
            idx = 0
            while (uint255(stor24[arg1].field_512) * 0.5) + 31 / 32 > idx:
                stor24[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor24[arg1].field_512) - (stor24[arg1].field_513 % 128 < 32):
            revert with 0, 34
        if arg4.length:
            stor24[arg1][2][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor24[arg1].field_512 = 0
            idx = 0
            while stor24[arg1].field_513 % 128 + 31 / 32 > idx:
                stor24[arg1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor24[arg1].field_768 = 0
    emit 0xcf778afb: arg1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = 30
    mem[128] = 'https://my-chance.io/api/token'
    if not -arg1:
        mem[256] = 'https://my-chance.io/api/token'
        mem[286] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[287] = 32
        mem[319] = mem[224]
        mem[351 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[mem[224] + 351] = 0
        return Array(len=mem[224], data=mem[351 len ceil32(mem[224])])
    s = 0
    idx = arg1
    while idx:
        if not s + 1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[160]:
                revert with 0, 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _175 = mem[64]
        _177 = mem[96]
        mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _269 = mem[160]
            mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(_269) <= _269:
                _337 = mem[64]
                mem[64] = _269 + _175 + _177 + 32
                mem[_269 + _175 + _177 + 32] = 32
                _353 = mem[_337]
                mem[_269 + _175 + _177 + 64] = mem[_337]
                mem[_269 + _175 + _177 + 96 len ceil32(_353)] = mem[_337 + 32 len ceil32(_353)]
                if ceil32(_353) > _353:
                    mem[_353 + _269 + _175 + _177 + 96] = 0
                return 32, mem[_269 + _175 + _177 + 64 len ceil32(_353) + 32]
            mem[_269 + _175 + _177 + 32] = 0
            _338 = mem[64]
            mem[64] = _269 + _175 + _177 + 32
            mem[_269 + _175 + _177 + 32] = 32
            _354 = mem[_338]
            mem[_269 + _175 + _177 + 64] = mem[_338]
            mem[_269 + _175 + _177 + 96 len ceil32(_354)] = mem[_338 + 32 len ceil32(_354)]
            if ceil32(_354) > _354:
                mem[_354 + _269 + _175 + _177 + 96] = 0
            return 32, mem[_269 + _175 + _177 + 64 len ceil32(_354) + 32]
        mem[mem[96] + mem[64] + 32] = 0
        _270 = mem[160]
        mem[_175 + _177 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_270) <= _270:
            _339 = mem[64]
            mem[64] = _270 + _175 + _177 + 32
            mem[_270 + _175 + _177 + 32] = 32
            _355 = mem[_339]
            mem[_270 + _175 + _177 + 64] = mem[_339]
            mem[_270 + _175 + _177 + 96 len ceil32(_355)] = mem[_339 + 32 len ceil32(_355)]
            if ceil32(_355) > _355:
                mem[_355 + _270 + _175 + _177 + 96] = 0
            return 32, mem[_270 + _175 + _177 + 64 len ceil32(_355) + 32]
        mem[_270 + _175 + _177 + 32] = 0
        _340 = mem[64]
        mem[64] = _270 + _175 + _177 + 32
        mem[_270 + _175 + _177 + 32] = 32
        _356 = mem[_340]
        mem[_270 + _175 + _177 + 64] = mem[_340]
        mem[_270 + _175 + _177 + 96 len ceil32(_356)] = mem[_340 + 32 len ceil32(_356)]
        if ceil32(_356) > _356:
            mem[_356 + _270 + _175 + _177 + 96] = 0
        return 32, mem[_270 + _175 + _177 + 64 len ceil32(_356) + 32]
    mem[192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[160]:
            revert with 0, 50
        mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _176 = mem[64]
    _178 = mem[96]
    mem[mem[64] + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        _271 = mem[160]
        mem[mem[64] + mem[96] + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(_271) <= _271:
            _341 = mem[64]
            mem[64] = _271 + _176 + _178 + 32
            mem[_271 + _176 + _178 + 32] = 32
            _357 = mem[_341]
            mem[_271 + _176 + _178 + 64] = mem[_341]
            mem[_271 + _176 + _178 + 96 len ceil32(_357)] = mem[_341 + 32 len ceil32(_357)]
            if ceil32(_357) > _357:
                mem[_357 + _271 + _176 + _178 + 96] = 0
            return 32, mem[_271 + _176 + _178 + 64 len ceil32(_357) + 32]
        mem[_271 + _176 + _178 + 32] = 0
        _342 = mem[64]
        mem[64] = _271 + _176 + _178 + 32
        mem[_271 + _176 + _178 + 32] = 32
        _358 = mem[_342]
        mem[_271 + _176 + _178 + 64] = mem[_342]
        mem[_271 + _176 + _178 + 96 len ceil32(_358)] = mem[_342 + 32 len ceil32(_358)]
        if ceil32(_358) > _358:
            mem[_358 + _271 + _176 + _178 + 96] = 0
        return 32, mem[_271 + _176 + _178 + 64 len ceil32(_358) + 32]
    mem[mem[96] + mem[64] + 32] = 0
    _272 = mem[160]
    mem[_176 + _178 + 32 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if ceil32(_272) <= _272:
        _343 = mem[64]
        mem[64] = _272 + _176 + _178 + 32
        mem[_272 + _176 + _178 + 32] = 32
        _359 = mem[_343]
        mem[_272 + _176 + _178 + 64] = mem[_343]
        mem[_272 + _176 + _178 + 96 len ceil32(_359)] = mem[_343 + 32 len ceil32(_359)]
        if ceil32(_359) > _359:
            mem[_359 + _272 + _176 + _178 + 96] = 0
        return 32, mem[_272 + _176 + _178 + 64 len ceil32(_359) + 32]
    mem[_272 + _176 + _178 + 32] = 0
    _344 = mem[64]
    mem[64] = _272 + _176 + _178 + 32
    mem[_272 + _176 + _178 + 32] = 32
    _360 = mem[_344]
    mem[_272 + _176 + _178 + 64] = mem[_344]
    mem[_272 + _176 + _178 + 96 len ceil32(_360)] = mem[_344 + 32 len ceil32(_360)]
    if ceil32(_360) > _360:
        mem[_360 + _272 + _176 + _178 + 96] = 0
    return 32, mem[_272 + _176 + _178 + 64 len ceil32(_360) + 32]
}

function sub_fbccfe03(?) {
    require calldata.size - 4 >= 32
    require arg1 < 3
    if arg1 > 2:
        revert with 0, 33
    if not arg1:
        if price > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^18 * price
        call stor14.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * price
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    else:
        if arg1 > 2:
            revert with 0, 33
        if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
            revert with 0, 17
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = 10^6 * price
        if arg1 - 2:
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^6 * price
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            mem[ceil32(return_data.size) + 164] = this.address
            require ext_code.size(stor20)
            call stor20.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor15, 10^6 * price, address(this.address), 0
        else:
            call stor16.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 10^6 * price
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if price > 0x10c6f7a0b5ed8d36b4c7f34938583621fafc8b0079a2834d26fa3fcc9ea9:
                revert with 0, 17
            mem[ceil32(return_data.size) + 164] = this.address
            require ext_code.size(stor20)
            call stor20.deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor16, 10^6 * price, address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        mem[ceil32(return_data.size) + 128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(return_data.size) + 224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(return_data.size) + 160 len 42], 8297, mem[ceil32(return_data.size) + 288 len 66], 0, 0 >> 928,
                    0
    stor12++
    mem[ceil32(return_data.size) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12]:
        revert with 0, 'ERC721: token already minted'
    stor10[stor12] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = stor12
            stor8[stor12] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[stor12] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[stor12]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor12]
        stor10[stor12] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor12] = msg.sender
    emit Transfer(0, msg.sender, stor12);
    if ext_code.size(msg.sender):
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = 0
        mem[ceil32(return_data.size) + 196] = stor12
        mem[ceil32(return_data.size) + 228] = 128
        mem[ceil32(return_data.size) + 260] = 0
        mem[ceil32(return_data.size) + 292 len 0] = None
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor12, 128, 0
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not -ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if arg1 > 2:
        revert with 0, 33
    uint256(assetType[stor12]) = arg1 or Mask(248, 8, uint256(assetType[stor12]))
    sub_a86932c5.length++
    storC97B[stor32.length] = stor12
    sub_653e3b20[stor12] = block.timestamp
}

function claim(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Invalid owner'
    if not stor26[address(arg2)]:
        revert with 0, 'Invalid charity'
    if arg3 <= 5:
        revert with 0, 'Minimum to donate is 5%'
    sub_11ab39a8[arg1][0] = 0
    sub_11ab39a8[arg1][1] = 0
    sub_11ab39a8[arg1][2] = 0
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor15, sub_11ab39a8[arg1][1], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor20.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args stor16, sub_11ab39a8[arg1][2], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= 100:
        if sub_11ab39a8[arg1][0] and arg3 > -1 / sub_11ab39a8[arg1][0]:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] and arg3 > -1 / sub_11ab39a8[arg1][1]:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] and arg3 > -1 / sub_11ab39a8[arg1][2]:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] < sub_11ab39a8[arg1][0] * arg3 / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] - (sub_11ab39a8[arg1][0] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] < sub_11ab39a8[arg1][1] * arg3 / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] - (sub_11ab39a8[arg1][1] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] < sub_11ab39a8[arg1][2] * arg3 / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] - (sub_11ab39a8[arg1][2] * arg3 / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if stor29 > !((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000):
            revert with 0, 17
        stor29 += (235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000
        if stor30 > !((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000):
            revert with 0, 17
        stor30 += (235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000
        if stor31 > !((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000):
            revert with 0, 17
        stor31 += (235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000
        if sub_11ab39a8[arg1][0] < (235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][0] * arg3 / 100:
            revert with 0, 17
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * sub_11ab39a8[arg1][0] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][0] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][1] < (235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][1] * arg3 / 100:
            revert with 0, 17
        call stor15.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * sub_11ab39a8[arg1][1] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][1] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][2] < (235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000) < sub_11ab39a8[arg1][2] * arg3 / 100:
            revert with 0, 17
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * sub_11ab39a8[arg1][2] * arg3 / 100) / 10000) - (sub_11ab39a8[arg1][2] * arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][0] * arg3 / 100:
            call stor14.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][0] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][1] * arg3 / 100:
            call stor15.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][1] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][2] * arg3 / 100:
            call stor16.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), sub_11ab39a8[arg1][2] * arg3 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
    else:
        if sub_11ab39a8[arg1][0] and 100 > -1 / sub_11ab39a8[arg1][0]:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] and 100 > -1 / sub_11ab39a8[arg1][1]:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] and 100 > -1 / sub_11ab39a8[arg1][2]:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] < 100 * sub_11ab39a8[arg1][0] / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] - (100 * sub_11ab39a8[arg1][0] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] < 100 * sub_11ab39a8[arg1][1] / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] - (100 * sub_11ab39a8[arg1][1] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] < 100 * sub_11ab39a8[arg1][2] / 100:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] - (100 * sub_11ab39a8[arg1][2] / 100) > 0x116e0689427378eb4d583d0116e0689427378eb4d583d0116e0689427378eb4:
            revert with 0, 17
        if stor29 > !((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000):
            revert with 0, 17
        stor29 += (235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000
        if stor30 > !((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000):
            revert with 0, 17
        stor30 += (235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000
        if stor31 > !((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000):
            revert with 0, 17
        stor31 += (235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000
        if sub_11ab39a8[arg1][0] < (235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000) < 100 * sub_11ab39a8[arg1][0] / 100:
            revert with 0, 17
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][0] - ((235 * sub_11ab39a8[arg1][0]) - (235 * 100 * sub_11ab39a8[arg1][0] / 100) / 10000) - (100 * sub_11ab39a8[arg1][0] / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][1] < (235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000) < 100 * sub_11ab39a8[arg1][1] / 100:
            revert with 0, 17
        call stor15.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][1] - ((235 * sub_11ab39a8[arg1][1]) - (235 * 100 * sub_11ab39a8[arg1][1] / 100) / 10000) - (100 * sub_11ab39a8[arg1][1] / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if sub_11ab39a8[arg1][2] < (235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000:
            revert with 0, 17
        if sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000) < 100 * sub_11ab39a8[arg1][2] / 100:
            revert with 0, 17
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_11ab39a8[arg1][2] - ((235 * sub_11ab39a8[arg1][2]) - (235 * 100 * sub_11ab39a8[arg1][2] / 100) / 10000) - (100 * sub_11ab39a8[arg1][2] / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if 100 * sub_11ab39a8[arg1][0] / 100:
            call stor14.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if 100 * sub_11ab39a8[arg1][1] / 100:
            call stor15.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][1] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
        if 100 * sub_11ab39a8[arg1][2] / 100:
            call stor16.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 100 * sub_11ab39a8[arg1][2] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
}



}
