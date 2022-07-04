contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#  - claimAll()
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


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
mapping of struct roleAdmin;
uint256 stor12;
address sub_69127716Address;
address sub_c6349dd1Address;
uint256 MINT_PRICE;
uint256 MAX_LEVEL;
mapping of struct sub_2d3a3af5;
array of struct sub_0805d884;
array of uint256 stor19;
mapping of struct stor20;
uint256 startTime;

function sub_0805d884(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_2d3a3af5[arg1].field_256 >= sub_0805d884.length:
        revert with 'NH{q', 50
    return sub_0805d884[stor17[arg1].field_256].field_0
}

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

function sub_2d3a3af5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2d3a3af5[arg1].field_0, 
           sub_2d3a3af5[arg1].field_256,
           bool(sub_2d3a3af5[arg1].field_512),
           sub_2d3a3af5[arg1].field_768,
           sub_2d3a3af5[arg1].field_1024
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

function sub_3158c9de(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_0805d884.length:
        revert with 'NH{q', 50
    return sub_0805d884[arg1].field_0
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

function sub_69127716(?) {
    return sub_69127716Address
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function MAX_LEVEL() {
    return MAX_LEVEL
}

function MINT_PRICE() {
    return MINT_PRICE
}

function sub_c6349dd1(?) {
    return sub_c6349dd1Address
}

function sub_d964147c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_0805d884.length
    return sub_0805d884[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_78b386f2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_2d3a3af5[arg1].field_256 >= sub_0805d884.length:
        revert with 'NH{q', 50
    return (sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6)
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getRewardPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startTime:
        return 0
    if arg1 >= startTime:
        if block.timestamp < arg1:
            revert with 'NH{q', 17
        return (block.timestamp - arg1)
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    return (block.timestamp - startTime)
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

function sub_95041388(?) {
    if sub_0805d884.length:
        mem[128] = uint256(sub_0805d884.field_0)
        idx = 128
        s = 0
        while (32 * sub_0805d884.length) + 96 > idx:
            mem[idx + 32] = sub_0805d884[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_0805d884.length, data=mem[128 len 32 * sub_0805d884.length])
    mem[(32 * sub_0805d884.length) + 128] = 32
    mem[(32 * sub_0805d884.length) + 160] = sub_0805d884.length
    mem[(32 * sub_0805d884.length) + 192 len 32 * sub_0805d884.length] = mem[128 len 32 * sub_0805d884.length]
    return memory
      from (32 * sub_0805d884.length) + 128
       len (96 * sub_0805d884.length) + 64
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

function sub_7f4c3b73(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < startTime:
        if sub_2d3a3af5[arg1].field_256 >= sub_0805d884.length:
            revert with 'NH{q', 50
        if False and sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > 0:
            revert with 'NH{q', 17
        else:
            return 0
    if sub_2d3a3af5[arg1].field_1024 >= startTime:
        if block.timestamp < sub_2d3a3af5[arg1].field_1024:
            revert with 'NH{q', 17
        if sub_2d3a3af5[arg1].field_256 >= sub_0805d884.length:
            revert with 'NH{q', 50
        if block.timestamp - sub_2d3a3af5[arg1].field_1024 and sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - sub_2d3a3af5[arg1].field_1024:
            revert with 'NH{q', 17
        return ((block.timestamp * sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) - (sub_2d3a3af5[arg1].field_1024 * sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6))
    if block.timestamp < startTime:
        revert with 'NH{q', 17
    if sub_2d3a3af5[arg1].field_256 >= sub_0805d884.length:
        revert with 'NH{q', 50
    if block.timestamp - startTime and sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
        revert with 'NH{q', 17
    return ((block.timestamp * sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) - (startTime * sub_0805d884[stor17[arg1].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6))
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        startTime = arg1
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
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        MINT_PRICE = arg1
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
}

function setRewardsAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        sub_c6349dd1Address = arg1
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
}

function sub_c35544b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        sub_69127716Address = address(arg1)
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
}

function sub_36635d71(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        sub_2d3a3af5[arg1].field_0 = arg2
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
}

function sub_523c3915(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        sub_2d3a3af5[arg1].field_256 = arg2
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
}

function sub_9565fdec(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        sub_2d3a3af5[arg1].field_512 = uint8(bool(arg2))
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
}

function addLevel(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        if MAX_LEVEL > -2:
            revert with 'NH{q', 17
        MAX_LEVEL++
        sub_0805d884.length++
        sub_0805d884[sub_0805d884.length].field_0 = arg1
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

function sub_ae197a70(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        if sub_0805d884.length < arg1:
            revert with 0, 'Level doesnt exist'
        if arg1 >= sub_0805d884.length:
            revert with 'NH{q', 50
        sub_0805d884[arg1].field_0 = arg2
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
}

function sub_dd124721(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if block.timestamp < startTime:
            mem[32] = 17
            if sub_2d3a3af5[stor6[address(arg1)][idx]].field_256 >= sub_0805d884.length:
                revert with 'NH{q', 50
            mem[0] = 18
            if False and sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 'NH{q', 17
        else:
            if sub_2d3a3af5[stor6[address(arg1)][idx]].field_1024 >= startTime:
                if block.timestamp < sub_2d3a3af5[stor6[address(arg1)][idx]].field_1024:
                    revert with 'NH{q', 17
                mem[32] = 17
                if sub_2d3a3af5[stor6[address(arg1)][idx]].field_256 >= sub_0805d884.length:
                    revert with 'NH{q', 50
                mem[0] = 18
                if block.timestamp - sub_2d3a3af5[stor6[address(arg1)][idx]].field_1024 and sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - sub_2d3a3af5[stor6[address(arg1)][idx]].field_1024:
                    revert with 'NH{q', 17
                if 0 > (-1 * block.timestamp * sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) + (sub_2d3a3af5[stor6[address(arg1)][idx]].field_1024 * sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) - 1:
                    revert with 'NH{q', 17
            else:
                if block.timestamp < startTime:
                    revert with 'NH{q', 17
                mem[32] = 17
                if sub_2d3a3af5[stor6[address(arg1)][idx]].field_256 >= sub_0805d884.length:
                    revert with 'NH{q', 50
                mem[0] = 18
                if block.timestamp - startTime and sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 'NH{q', 17
                if 0 > (-1 * block.timestamp * sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) + (startTime * sub_0805d884[stor17[stor6[address(arg1)][idx]].field_256].field_0 / 24 * 3600 / 24 * 3600 / 100 * 10^6) - 1:
                    revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor19.length = 0
                idx = 0
                while stor19.length.field_1 + 31 / 32 > idx:
                    stor19[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if arg1.length:
                stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor19.length = 0
                idx = 0
                while stor19.length.field_1 + 31 / 32 > idx:
                    stor19[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    mem[ceil32(ceil32(arg1.length)) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    mem[ceil32(ceil32(arg1.length)) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[ceil32(ceil32(arg1.length)) + 353] = 'AccessControl: account '
    mem[ceil32(ceil32(arg1.length)) + 376 len 64] = 0, mem[ceil32(ceil32(arg1.length)) + 130 len 63]
    mem[ceil32(ceil32(arg1.length)) + 418] = ' is missing role '
    mem[ceil32(ceil32(arg1.length)) + 435 len 96] = 0, mem[ceil32(ceil32(arg1.length)) + 226 len 95]
    mem[ceil32(ceil32(arg1.length)) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + 505] = 32
    mem[ceil32(ceil32(arg1.length)) + 537] = mem[ceil32(ceil32(arg1.length)) + 321]
    mem[ceil32(ceil32(arg1.length)) + 569 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])] = mem[ceil32(ceil32(arg1.length)) + 353 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])]
    if ceil32(mem[ceil32(ceil32(arg1.length)) + 321]) > mem[ceil32(ceil32(arg1.length)) + 321]:
        mem[ceil32(ceil32(arg1.length)) + mem[ceil32(ceil32(arg1.length)) + 321] + 569] = 0
    revert with 0, 
                32,
                mem[ceil32(ceil32(arg1.length)) + 321],
                mem[ceil32(ceil32(arg1.length)) + 569 len ceil32(mem[ceil32(ceil32(arg1.length)) + 321])]
}

function sub_53bb0ab3(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        if stor20[arg1][arg2].field_0:
            if stor20[arg1][arg2].field_0 == stor20[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor20[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor20[arg1][arg2].field_0 = 0
                idx = 0
                while stor20[arg1][arg2].field_1 + 31 / 32 > idx:
                    stor20[arg1][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor20[arg1][arg2].field_0 == stor20[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if arg3.length:
                stor20[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor20[arg1][arg2].field_0 = 0
                idx = 0
                while stor20[arg1][arg2].field_1 + 31 / 32 > idx:
                    stor20[arg1][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg3.length)) + 129 len 42] = call.data[calldata.size len 42]
    mem[ceil32(ceil32(arg3.length)) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg3.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg3.length)) + 225 len 66] = call.data[calldata.size len 66]
    mem[ceil32(ceil32(arg3.length)) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(ceil32(arg3.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[ceil32(ceil32(arg3.length)) + 353] = 'AccessControl: account '
    mem[ceil32(ceil32(arg3.length)) + 376 len 64] = 0, mem[ceil32(ceil32(arg3.length)) + 130 len 63]
    mem[ceil32(ceil32(arg3.length)) + 418] = ' is missing role '
    mem[ceil32(ceil32(arg3.length)) + 435 len 96] = 0, mem[ceil32(ceil32(arg3.length)) + 226 len 95]
    mem[ceil32(ceil32(arg3.length)) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg3.length)) + 505] = 32
    mem[ceil32(ceil32(arg3.length)) + 537] = mem[ceil32(ceil32(arg3.length)) + 321]
    mem[ceil32(ceil32(arg3.length)) + 569 len ceil32(mem[ceil32(ceil32(arg3.length)) + 321])] = mem[ceil32(ceil32(arg3.length)) + 353 len ceil32(mem[ceil32(ceil32(arg3.length)) + 321])]
    if ceil32(mem[ceil32(ceil32(arg3.length)) + 321]) > mem[ceil32(ceil32(arg3.length)) + 321]:
        mem[ceil32(ceil32(arg3.length)) + mem[ceil32(ceil32(arg3.length)) + 321] + 569] = 0
    revert with 0, 
                32,
                mem[ceil32(ceil32(arg3.length)) + 321],
                mem[ceil32(ceil32(arg3.length)) + 569 len ceil32(mem[ceil32(ceil32(arg3.length)) + 321])]
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Invalid mint amount'
    if arg1 > 30:
        revert with 0, 'Invalid mint amount'
    if arg1 and MINT_PRICE > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 * MINT_PRICE != msg.value:
        revert with 0, 'Invalid payment amount'
    idx = 0
    while idx < arg1:
        stor12++
        _137 = mem[64]
        mem[64] = mem[64] + 32
        mem[_137] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = stor12
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
            stor7[stor12] = balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) <= 0:
                _164 = mem[64]
                mem[64] = mem[64] + 160
                mem[_164] = 0
                mem[_164 + 32] = 0
                mem[_164 + 64] = 1
                mem[_164 + 96] = 0
                mem[_164 + 128] = block.timestamp
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_137 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
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
                _273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_273] == Mask(32, 224, mem[_273])
                if Mask(32, 224, mem[_273]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _321 = mem[64]
                mem[64] = mem[64] + 160
                mem[_321] = 0
                mem[_321 + 32] = 0
                mem[_321 + 64] = 1
                mem[_321 + 96] = 0
                mem[_321 + 128] = block.timestamp
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor12] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor12]
            stor9[stor12] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12
            mem[32] = 2
            ownerOf[stor12] = msg.sender
            emit Transfer(0, msg.sender, stor12);
            if ext_code.size(msg.sender) <= 0:
                _172 = mem[64]
                mem[64] = mem[64] + 160
                mem[_172] = 0
                mem[_172 + 32] = 0
                mem[_172 + 64] = 1
                mem[_172 + 96] = 0
                mem[_172 + 128] = block.timestamp
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_137 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12, 128, 0
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
                _274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_274] == Mask(32, 224, mem[_274])
                if Mask(32, 224, mem[_274]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _328 = mem[64]
                mem[64] = mem[64] + 160
                mem[_328] = 0
                mem[_328 + 32] = 0
                mem[_328 + 64] = 1
                mem[_328 + 96] = 0
                mem[_328 + 128] = block.timestamp
        mem[0] = stor12
        mem[32] = 17
        sub_2d3a3af5[stor12].field_0 = 0
        sub_2d3a3af5[stor12].field_256 = 0
        sub_2d3a3af5[stor12].field_512 = 1
        sub_2d3a3af5[stor12].field_768 = 0
        sub_2d3a3af5[stor12].field_1024 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0:
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
            revert with 'NH{q', 34
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0:
            if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
                revert with 'NH{q', 34
            if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                if 31 >= stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                    mem[160] = 256 * stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_8
                else:
                    mem[160] = stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0
                    idx = 160
                    s = 0
                    while stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 128 > idx:
                        mem[idx + 32] = stor20[stor17[arg1].field_0][stor17[arg1].field_256][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
                revert with 'NH{q', 34
            if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                if 31 >= stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                    mem[160] = 256 * stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_8
                else:
                    mem[160] = stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0
                    idx = 160
                    s = 0
                    while stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 128 > idx:
                        mem[idx + 32] = stor20[stor17[arg1].field_0][stor17[arg1].field_256][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1 <= 0:
                return ''
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1 <= 0:
                return ''
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len 0] = None
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1)] = mem[160 len ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1)]
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 192] = 32
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 224] = mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 256 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])] = mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])]
        if ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]) > mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]:
            mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160], data=mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 256 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])]), 
    if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
        revert with 'NH{q', 34
    if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0:
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
            revert with 'NH{q', 34
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
            if 31 >= stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                mem[160] = 256 * stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_8
            else:
                mem[160] = stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0
                idx = 160
                s = 0
                while stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 128 > idx:
                    mem[idx + 32] = stor20[stor17[arg1].field_0][stor17[arg1].field_256][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0 == stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 < 32:
            revert with 'NH{q', 34
        if stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
            if 31 >= stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1:
                mem[160] = 256 * stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_8
            else:
                mem[160] = stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_0
                idx = 160
                s = 0
                while stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 128 > idx:
                    mem[idx + 32] = stor20[stor17[arg1].field_0][stor17[arg1].field_256][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1 <= 0:
            return ''
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1 <= 0:
            return ''
    mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len 0] = None
    mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1)] = mem[160 len ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1)]
    mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 192] = 32
    mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 224] = mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]
    mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 256 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])] = mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 192 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])]
    if ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]) > mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160]:
        mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160] + 256] = 0
    return Array(len=mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160], data=mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1 + 256 len ceil32(mem[ceil32(stor20[stor17[arg1].field_0][stor17[arg1].field_256].field_1) + 160])]), 
}



}
