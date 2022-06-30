contract main {




// =====================  Runtime code  =====================


#
#  - claimAll()
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor152;
array of uint256 tokenByIndex;
mapping of uint256 stor154;
mapping of struct roleAdmin;
array of struct stor251;
mapping of struct stor252;
uint8 tradingEnabled; offset 160
uint128 stor253; offset 160
address settingsAddress;
uint256 startTime;
mapping of struct stor255;
array of struct tiers;
array of struct sub_d964147c;
uint256 sub_dc204901;
uint256 sub_36ffce2c;
uint256 sub_7e076932;
uint256 sub_17b5ab0e;
uint256 sub_003eb4cf;
array of uint256 stor7517297971674283146633982231674076422976352697633316029190874213404651058825;
array of uint256 stor31605475728638136284098257830937953109142906242585568807375082376557418698875;
mapping of uint8 stor36667516139767916060412247076261457593881915708432657488847581920717995631746;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function sub_003eb4cf(?) payable {
    return sub_003eb4cf
}

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tiers.length
    return tiers[arg1].field_0
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_17b5ab0e(?) payable {
    return sub_17b5ab0e
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_36ffce2c(?) payable {
    return sub_36ffce2c
}

function tradingEnabled() payable {
    return bool(tradingEnabled)
}

function sub_4d4f7177(?) payable {
    return tiers.length
}

function sub_4e871790(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_d964147c.length:
        revert with 0, 50
    return sub_d964147c[arg1].field_0
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function sub_7e076932(?) payable {
    return sub_7e076932
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_d964147c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_d964147c.length
    return sub_d964147c[arg1].field_0
}

function sub_dc204901(?) payable {
    return sub_dc204901
}

function settings() payable {
    return settingsAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getRewardPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        return 0
    if arg1 >= startTime:
        if block.timestamp < arg1:
            revert with 0, 17
        return (block.timestamp - arg1)
    if block.timestamp < startTime:
        revert with 0, 17
    return (block.timestamp - startTime)
}

function sub_29bec889(?) payable {
    require calldata.size - 4 >= 32
    if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
        revert with 0, 17
    if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
        revert with 0, 17
    return (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6)
}

function sub_31e765d0(?) payable {
    require calldata.size - 4 >= 32
    if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
        revert with 0, 17
    if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
        revert with 0, 17
    return (sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function getTier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not tiers.length:
        revert with 0, 'Tiers not set!'
    if tiers.length < 1:
        revert with 0, 17
    idx = tiers.length - 1
    while idx:
        if idx >= tiers.length:
            revert with 0, 50
        mem[0] = 256
        if stor255[arg1].field_1024 > tiers[idx].field_0:
            return idx
        if idx < 1:
            revert with 0, 17
        idx = idx - 1
        continue 
    return 0
}

function sub_78b386f2(?) payable {
    require calldata.size - 4 >= 32
    if stor255[arg1].field_512 >= sub_d964147c.length:
        revert with 0, 50
    if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
        revert with 0, 17
    if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
        revert with 0, 17
    return (sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
}

function getTiers() payable {
    if tiers.length:
        mem[128] = uint256(tiers.field_0)
        if (32 * tiers.length) + 32 > 64:
            mem[160] = uint256(tiers.field_256)
            idx = 160
            s = 1
            while (32 * tiers.length) + 96 > idx:
                mem[idx + 32] = tiers[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * tiers.length) + 128] = 32
    mem[(32 * tiers.length) + 160] = tiers.length
    mem[(32 * tiers.length) + 192 len 32 * tiers.length] = mem[128 len 32 * tiers.length]
    return memory
      from (32 * tiers.length) + 128
       len (96 * tiers.length) + 64
}

function sub_0805d884(?) payable {
    require calldata.size - 4 >= 32
    if not tiers.length:
        revert with 0, 'Tiers not set!'
    if tiers.length < 1:
        revert with 0, 17
    idx = tiers.length - 1
    while idx:
        if idx >= tiers.length:
            revert with 0, 50
        mem[0] = 256
        if stor255[arg1].field_1024 <= tiers[idx].field_0:
            if idx < 1:
                revert with 0, 17
            idx = idx - 1
            continue 
        if idx >= sub_d964147c.length:
            revert with 0, 50
        return sub_d964147c[idx].field_0
    if 0 >= sub_d964147c.length:
        revert with 0, 50
    return uint256(sub_d964147c.field_0)
}

function sub_95041388(?) payable {
    if sub_d964147c.length:
        mem[128] = uint256(sub_d964147c.field_0)
        idx = 128
        s = 0
        while (32 * sub_d964147c.length) + 96 > idx:
            mem[idx + 32] = sub_d964147c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_d964147c.length, data=mem[128 len 32 * sub_d964147c.length])
    mem[(32 * sub_d964147c.length) + 128] = 32
    mem[(32 * sub_d964147c.length) + 160] = sub_d964147c.length
    mem[(32 * sub_d964147c.length) + 192 len 32 * sub_d964147c.length] = mem[128 len 32 * sub_d964147c.length]
    return memory
      from (32 * sub_d964147c.length) + 128
       len (96 * sub_d964147c.length) + 64
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_54ab5c12(?) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_dc204901 = arg1
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

function sub_59f37ba2(?) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_36ffce2c = arg1
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

function sub_5d2b7e99(?) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_17b5ab0e = arg1
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

function sub_87ca8149(?) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_7e076932 = arg1
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

function sub_aba9f476(?) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_003eb4cf = arg1
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

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        startTime = arg1
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

function sub_08d21570(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_256 = arg2
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

function sub_2d8b34a6(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_512 = arg2
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

function sub_97378b7d(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_1024 = arg2
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

function sub_ab59352c(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_1280 = arg2
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

function sub_c98c10f7(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_1792 = arg2
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

function sub_d4425c89(?) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor255[arg1].field_1536 = arg2
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

function setSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        settingsAddress = arg1
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

function setTradingEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        stor253 = Mask(96, 0, arg1)
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

function sub_7a3f4590(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(stor255[arg1].field_768) = uint8(bool(arg2))
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

function sub_115f6571(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xae82459f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xcd1bbe3 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x298aaf41 with:
            gas gas_remaining wei
           args uint32(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addXP(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if stor255[arg1].field_1024 > !arg2:
            revert with 0, 17
        stor255[arg1].field_1024 += arg2
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

function removeXP(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if stor255[arg1].field_1024 < arg2:
            revert with 0, 17
        stor255[arg1].field_1024 -= arg2
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

function addTier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        tiers.length++
        stor45E0[stor256.length] = arg1
        sub_d964147c.length++
        stor109E[stor257.length] = arg2
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

function sub_23818eed(?) payable {
    require calldata.size - 4 >= 96
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if arg1 > tiers.length:
            revert with 0, 'Tier doesnt exist'
        if arg1 >= tiers.length:
            revert with 0, 50
        tiers[arg1].field_0 = arg2
        if arg1 >= sub_d964147c.length:
            revert with 0, 50
        sub_d964147c[arg1].field_0 = arg3
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

function sub_50b7b603(?) payable {
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        tiers.length = 0
        idx = 0
        while tiers.length > idx:
            tiers[idx].field_0 = 0
            idx = idx + 1
            continue 
        sub_d964147c.length = 0
        idx = 0
        while sub_d964147c.length > idx:
            sub_d964147c[idx].field_0 = 0
            idx = idx + 1
            continue 
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

function revokeRole(bytes32 arg1, address arg2) payable {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if bool(stor251.length):
            if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor251[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor251.length = 0
                idx = 0
                while (uint255(stor251.length) * 0.5) + 31 / 32 > idx:
                    stor251[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor251[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor251.length = 0
                idx = 0
                while stor251.length.field_1 % 128 + 31 / 32 > idx:
                    stor251[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], ' is missing role ', mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_1c2b44b4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if bool(stor255[arg1].field_0):
            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor255[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor255[arg1].field_0 = 0
                idx = 0
                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor255[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                stor255[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor255[arg1].field_0 = 0
                idx = 0
                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                    stor255[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg2.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg2.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + 161 len 42], ' is missing role ', mem[ceil32(ceil32(arg2.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_577c2b95(?) payable {
    require calldata.size - 4 >= 32
    if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
        revert with 0, 17
    if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
        revert with 0, 17
    if startTime > stor255[arg1].field_2304:
        if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
            revert with 0, 17
        if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
            return 0
        if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
            revert with 0, 17
        if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
            revert with 0, 17
        if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
            revert with 0, 17
        return ((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6))
    if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
        revert with 0, 17
    if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
        return 0
    if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
        revert with 0, 17
    if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
        revert with 0, 17
    if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
        revert with 0, 17
    return ((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6))
}

function sub_53bb0ab3(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        if bool(stor252[arg1][arg2].field_0):
            if bool(stor252[arg1][arg2].field_0) == uint255(stor252[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor252[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor252[arg1][arg2].field_0 = 0
                idx = 0
                while (uint255(stor252[arg1][arg2].field_0) * 0.5) + 31 / 32 > idx:
                    stor252[arg1][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor252[arg1][arg2].field_0) == stor252[arg1][arg2].field_1 % 128 < 32:
                revert with 0, 34
            if arg3.length:
                stor252[arg1][arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor252[arg1][arg2].field_0 = 0
                idx = 0
                while stor252[arg1][arg2].field_1 % 128 + 31 / 32 > idx:
                    stor252[arg1][arg2][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg3.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg3.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg3.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg3.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg3.length)) + 161 len 42], ' is missing role ', mem[ceil32(ceil32(arg3.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_d39d8deb(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < startTime:
        if stor255[arg1].field_512 >= sub_d964147c.length:
            revert with 0, 50
        if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
            revert with 0, 17
        if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
            revert with 0, 17
        if False and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
            revert with 0, 17
        else:
            return 0
    if stor255[arg1].field_2304 >= startTime:
        if block.timestamp < stor255[arg1].field_2304:
            revert with 0, 17
        if stor255[arg1].field_512 >= sub_d964147c.length:
            revert with 0, 50
        if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
            revert with 0, 17
        if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
            revert with 0, 17
        if block.timestamp - stor255[arg1].field_2304 and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304:
            revert with 0, 17
        return ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6))
    if block.timestamp < startTime:
        revert with 0, 17
    if stor255[arg1].field_512 >= sub_d964147c.length:
        revert with 0, 50
    if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
        revert with 0, 17
    if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
        revert with 0, 17
    if block.timestamp - startTime and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
        revert with 0, 17
    return ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6))
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
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

function initialize(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 7
        stor101.length.field_200 % 72057594037927936 = 'Brewery' % 72057594037927936
        idx = 0
        while (uint255(stor101.length) * 0.5) + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor101.length) = 0
        uint255(stor101.length.field_1) = 7
        stor101.length.field_200 % 72057594037927936 = 'Brewery' % 72057594037927936
        idx = 0
        while stor101.length.field_1 % 128 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 7
        stor102.length.field_200 % 72057594037927936 = 'BREWERY' % 72057594037927936
        idx = 0
        while (uint255(stor102.length) * 0.5) + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        bool(stor102.length) = 0
        uint255(stor102.length.field_1) = 7
        stor102.length.field_200 % 72057594037927936 = 'BREWERY' % 72057594037927936
        idx = 0
        while stor102.length.field_1 % 128 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        revert with 0, 'Initializable: contract is not initializing'
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        uint8(roleAdmin[0][address(msg.sender)].field_0) = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0) = 1
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, msg.sender, msg.sender);
    if not uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(this.address)].field_0):
        uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(this.address)].field_0) = 1
        emit RoleGranted(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, this.address, msg.sender);
    sub_dc204901 = arg2
    sub_36ffce2c = arg3
    sub_7e076932 = 10000
    sub_17b5ab0e = 10000
    sub_003eb4cf = 10000
    startTime = block.timestamp
    settingsAddress = arg1
    tradingEnabled = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_332c1e06(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor255[arg1].field_0):
        if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor255[arg1].field_0):
            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor255[arg1].field_0):
                if 31 >= uint255(stor255[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor255[arg1].field_8)
                else:
                    mem[128] = stor255[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor255[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor255[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor255[arg1].field_1 % 128:
                if 31 >= stor255[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor255[arg1].field_8)
                else:
                    mem[128] = stor255[arg1].field_0
                    idx = 128
                    s = 0
                    while stor255[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor255[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor255[arg1].field_0), data=mem[128 len ceil32(uint255(stor255[arg1].field_0) * 0.5)]), 
               stor255[arg1].field_256,
               stor255[arg1].field_512,
               bool(uint8(stor255[arg1].field_768)),
               stor255[arg1].field_1024,
               stor255[arg1].field_1280,
               stor255[arg1].field_1536,
               stor255[arg1].field_1792,
               stor255[arg1].field_2048,
               stor255[arg1].field_2304
    if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor255[arg1].field_0):
        if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor255[arg1].field_0):
            if 31 >= uint255(stor255[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor255[arg1].field_8)
            else:
                mem[128] = stor255[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor255[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor255[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor255[arg1].field_1 % 128:
            if 31 >= stor255[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor255[arg1].field_8)
            else:
                mem[128] = stor255[arg1].field_0
                idx = 128
                s = 0
                while stor255[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor255[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor255[arg1].field_0 % 128, data=mem[128 len ceil32(stor255[arg1].field_1 % 128)]), 
           stor255[arg1].field_256,
           stor255[arg1].field_512,
           bool(uint8(stor255[arg1].field_768)),
           stor255[arg1].field_1024,
           stor255[arg1].field_1280,
           stor255[arg1].field_1536,
           stor255[arg1].field_1792,
           stor255[arg1].field_2048,
           stor255[arg1].field_2304
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
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

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor101.length.field_1 % 128:
                if 31 < stor101.length.field_1 % 128:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor101.length.field_1 % 128:
            if 31 < stor101.length.field_1 % 128:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    mem[ceil32(stor101.length.field_1 % 128) + 192 len ceil32(stor101.length.field_1 % 128)] = mem[128 len ceil32(stor101.length.field_1 % 128)]
    if ceil32(stor101.length.field_1 % 128) > stor101.length.field_1 % 128:
        mem[stor101.length.field_1 % 128 + ceil32(stor101.length.field_1 % 128) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)], mem[(2 * ceil32(stor101.length.field_1 % 128)) + 192 len 2 * ceil32(stor101.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor102.length.field_1 % 128:
                if 31 < stor102.length.field_1 % 128:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor102.length.field_1 % 128:
            if 31 < stor102.length.field_1 % 128:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    mem[ceil32(stor102.length.field_1 % 128) + 192 len ceil32(stor102.length.field_1 % 128)] = mem[128 len ceil32(stor102.length.field_1 % 128)]
    if ceil32(stor102.length.field_1 % 128) > stor102.length.field_1 % 128:
        mem[stor102.length.field_1 % 128 + ceil32(stor102.length.field_1 % 128) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor154[arg3] = tokenByIndex.length
        tokenByIndex.length++
        stor72A1[stor153.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor152[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor152[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor152[stor151[address(arg1)][stor104[address(arg1)] - 1]] = stor152[arg3]
            stor152[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor152[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[arg3]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[arg3]
        stor154[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if not tradingEnabled:
        revert with 0, 'Trading is disabled'
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

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not stor5111[msg.sender]:
        revert with 0, 'Incorrect role!'
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x3c8463a1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        revert with 0, 'ERC721: balance query for the zero address'
    if 1 > !balanceOf[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] + 1 > ext_call.return_data[0]:
        revert with 0, 'Cant go over limit'
    if 1 > !tokenByIndex.length:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor153.length + 1]:
        revert with 0, 'ERC721: token already minted'
    stor154[stor153.length + 1] = tokenByIndex.length
    tokenByIndex.length++
    stor72A1[stor153.length] = tokenByIndex.length + 1
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)]] = tokenByIndex.length + 1
            stor152[stor153.length + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor154[stor153.length + 1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
        stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
        stor154[stor153.length + 1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor153.length + 1] = arg1
    emit Transfer(0, arg1, tokenByIndex.length + 1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if bool(stor255[stor153.length + 1].field_0):
        if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor255[stor153.length + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor255[stor153.length + 1].field_0 = 0
            idx = 0
            while (uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32 > idx:
                stor255[stor153.length + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            stor255[stor153.length + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor255[stor153.length + 1].field_0 = 0
            idx = 0
            while stor255[stor153.length + 1].field_1 % 128 + 31 / 32 > idx:
                stor255[stor153.length + 1][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor255[stor153.length + 1].field_256 = 0
    stor255[stor153.length + 1].field_512 = 0
    uint8(stor255[stor153.length + 1].field_768) = 1
    stor255[stor153.length + 1].field_1024 = 0
    stor255[stor153.length + 1].field_1280 = 10000
    stor255[stor153.length + 1].field_1536 = 10000
    stor255[stor153.length + 1].field_1792 = 10000
    stor255[stor153.length + 1].field_2048 = 0
    stor255[stor153.length + 1].field_2304 = block.timestamp
}

function sub_96e55d59(?) payable {
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
            mem[32] = 255
            if stor255[stor151[address(arg1)][idx]].field_512 >= sub_d964147c.length:
                revert with 0, 50
            mem[0] = 257
            if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 and stor255[stor151[address(arg1)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280:
                revert with 0, 17
            if False and sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 0, 17
        else:
            if stor255[stor151[address(arg1)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(arg1)][idx]].field_2304:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(arg1)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 and stor255[stor151[address(arg1)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(arg1)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(arg1)][idx]].field_2304:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(arg1)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(arg1)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 and stor255[stor151[address(arg1)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(arg1)][idx]].field_512].field_0 * stor255[stor151[address(arg1)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor251.length):
        if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor251.length):
            if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor251.length):
                if 31 >= uint255(stor251.length) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor251.length.field_8)
                else:
                    mem[128] = uint256(stor251.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor251.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor251[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor251.length.field_1 % 128:
                if 31 >= stor251.length.field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor251.length.field_8)
                else:
                    mem[128] = uint256(stor251.field_0)
                    idx = 128
                    s = 0
                    while stor251.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor251[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
                revert with 0, 34
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
                if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
                    if 31 >= uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5:
                        mem[ceil32(uint255(stor251.length) * 0.5) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                    else:
                        mem[ceil32(uint255(stor251.length) * 0.5) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                        idx = ceil32(uint255(stor251.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor251.length) * 0.5) + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
                    revert with 0, 34
                if stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                    if 31 >= stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                        mem[ceil32(uint255(stor251.length) * 0.5) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                    else:
                        mem[ceil32(uint255(stor251.length) * 0.5) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                        idx = ceil32(uint255(stor251.length) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor251.length) * 0.5) + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + 128 > idx:
                            mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if bool(stor251.length):
                if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
                    revert with 0, 34
                if uint255(stor251.length) * 0.5 <= 0:
                    return ''
            else:
                if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
                    revert with 0, 34
                if stor251.length.field_1 % 128 <= 0:
                    return ''
            mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192 len ceil32(uint255(stor251.length) * 0.5)] = mem[128 len ceil32(uint255(stor251.length) * 0.5)]
            if ceil32(uint255(stor251.length) * 0.5) > uint255(stor251.length) * 0.5:
                mem[(uint255(stor251.length) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192] = 0
            mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 192 len ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5)] = mem[ceil32(uint255(stor251.length) * 0.5) + 160 len ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5)]
            mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 192] = 32
            mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 224] = mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]
            mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])] = mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])]
            if ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]) <= mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]:
                return Array(len=mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160], data=mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])]), 
            mem[mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160] + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 256] = 0
            return 32, mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + (uint255(stor251.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]) + 32], 
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
                if 31 >= uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5:
                    mem[ceil32(uint255(stor251.length) * 0.5) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                else:
                    mem[ceil32(uint255(stor251.length) * 0.5) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                    idx = ceil32(uint255(stor251.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor251.length) * 0.5) + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
                revert with 0, 34
            if stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                if 31 >= stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                    mem[ceil32(uint255(stor251.length) * 0.5) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                else:
                    mem[ceil32(uint255(stor251.length) * 0.5) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                    idx = ceil32(uint255(stor251.length) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor251.length) * 0.5) + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + 128 > idx:
                        mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor251.length):
            if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
                revert with 0, 34
            if uint255(stor251.length) * 0.5 <= 0:
                return ''
        else:
            if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor251.length.field_1 % 128 <= 0:
                return ''
        mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192 len ceil32(uint255(stor251.length) * 0.5)] = mem[128 len ceil32(uint255(stor251.length) * 0.5)]
        if ceil32(uint255(stor251.length) * 0.5) > uint255(stor251.length) * 0.5:
            mem[(uint255(stor251.length) * 0.5) + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192] = 0
        mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 192 len ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128)] = mem[ceil32(uint255(stor251.length) * 0.5) + 160 len ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128)]
        mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 192] = 32
        mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 224] = mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]
        mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])] = mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])]
        if ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]) <= mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]:
            return Array(len=mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160], data=mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])]), 
        mem[mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160] + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 256] = 0
        return 32, mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + (uint255(stor251.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor251.length) * 0.5) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]) + 32], 
    if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor251.length):
        if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor251.length):
            if 31 >= uint255(stor251.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor251.length.field_8)
            else:
                mem[128] = uint256(stor251.field_0)
                idx = 128
                s = 0
                while (uint255(stor251.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor251[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor251.length.field_1 % 128:
            if 31 >= stor251.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor251.length.field_8)
            else:
                mem[128] = uint256(stor251.field_0)
                idx = 128
                s = 0
                while stor251.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor251[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
                if 31 >= uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5:
                    mem[ceil32(stor251.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                else:
                    mem[ceil32(stor251.length.field_1 % 128) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                    idx = ceil32(stor251.length.field_1 % 128) + 160
                    s = 0
                    while ceil32(stor251.length.field_1 % 128) + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
                revert with 0, 34
            if stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                if 31 >= stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                    mem[ceil32(stor251.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
                else:
                    mem[ceil32(stor251.length.field_1 % 128) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                    idx = ceil32(stor251.length.field_1 % 128) + 160
                    s = 0
                    while ceil32(stor251.length.field_1 % 128) + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + 128 > idx:
                        mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor251.length):
            if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
                revert with 0, 34
            if uint255(stor251.length) * 0.5 <= 0:
                return ''
        else:
            if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor251.length.field_1 % 128 <= 0:
                return ''
        mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192 len ceil32(stor251.length.field_1 % 128)] = mem[128 len ceil32(stor251.length.field_1 % 128)]
        if ceil32(stor251.length.field_1 % 128) > stor251.length.field_1 % 128:
            mem[stor251.length.field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192] = 0
        mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 192 len ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5)] = mem[ceil32(stor251.length.field_1 % 128) + 160 len ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5)]
        mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 192] = 32
        mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 224] = mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]
        mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])] = mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 192 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])]
        if ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]) <= mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]:
            return Array(len=mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160], data=mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160])]), 
        mem[mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160] + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 256] = 0
        return 32, mem[(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + stor251.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 160]) + 32], 
    if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0):
            if 31 >= uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5:
                mem[ceil32(stor251.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
            else:
                mem[ceil32(stor251.length.field_1 % 128) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                idx = ceil32(stor251.length.field_1 % 128) + 160
                s = 0
                while ceil32(stor251.length.field_1 % 128) + (uint255(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0) == stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 < 32:
            revert with 0, 34
        if stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
            if 31 >= stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128:
                mem[ceil32(stor251.length.field_1 % 128) + 160] = 256 * Mask(248, 0, stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_8)
            else:
                mem[ceil32(stor251.length.field_1 % 128) + 160] = stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_0
                idx = ceil32(stor251.length.field_1 % 128) + 160
                s = 0
                while ceil32(stor251.length.field_1 % 128) + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + 128 > idx:
                    mem[idx + 32] = stor252[stor255[arg1].field_256][stor255[arg1].field_512][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor251.length):
        if bool(stor251.length) == uint255(stor251.length) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor251.length) * 0.5 <= 0:
            return ''
    else:
        if bool(stor251.length) == stor251.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor251.length.field_1 % 128 <= 0:
            return ''
    mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192 len ceil32(stor251.length.field_1 % 128)] = mem[128 len ceil32(stor251.length.field_1 % 128)]
    if ceil32(stor251.length.field_1 % 128) > stor251.length.field_1 % 128:
        mem[stor251.length.field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192] = 0
    mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 192 len ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128)] = mem[ceil32(stor251.length.field_1 % 128) + 160 len ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128)]
    mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 192] = 32
    mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 224] = mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]
    mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])] = mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 192 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])]
    if ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]) > mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160]:
        mem[mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160] + stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 256] = 0
    return Array(len=mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160], data=mem[stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128 + ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + stor251.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor251.length.field_1 % 128) + ceil32(stor252[stor255[arg1].field_256][stor255[arg1].field_512].field_1 % 128) + 160])]), 
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Must be owner of this BREWERY'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    if approved[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BREWERY is approved for spending/listed'
    if block.timestamp < startTime:
        if stor255[arg1].field_512 >= sub_d964147c.length:
            revert with 0, 50
        if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
            revert with 0, 17
        if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
            revert with 0, 17
        if False and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
            revert with 0, 17
        if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
            revert with 0, 17
        if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
            revert with 0, 17
        if startTime > stor255[arg1].field_2304:
            if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                revert with 0, 17
            if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                if stor255[arg1].field_1024 > -1:
                    revert with 0, 17
            else:
                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                    revert with 0, 17
                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                    revert with 0, 17
                if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                    revert with 0, 17
                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                    revert with 0, 17
                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
        else:
            if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                revert with 0, 17
            if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                if stor255[arg1].field_1024 > -1:
                    revert with 0, 17
            else:
                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                    revert with 0, 17
                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                    revert with 0, 17
                if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                    revert with 0, 17
                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                    revert with 0, 17
                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
        if not tiers.length:
            revert with 0, 'Tiers not set!'
        if tiers.length < 1:
            revert with 0, 17
        idx = tiers.length - 1
        while idx:
            if idx >= tiers.length:
                revert with 0, 50
            mem[0] = 256
            if stor255[arg1].field_1024 <= tiers[idx].field_0:
                if idx < 1:
                    revert with 0, 17
                idx = idx - 1
                continue 
            if idx < tiers.length:
                if idx != stor255[arg1].field_512:
                    stor255[arg1].field_512 = idx
                    emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
            stor255[arg1].field_2304 = block.timestamp
        if 0 < tiers.length:
            if stor255[arg1].field_512 != 0:
                stor255[arg1].field_512 = 0
                emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
    else:
        if stor255[arg1].field_2304 >= startTime:
            if block.timestamp < stor255[arg1].field_2304:
                revert with 0, 17
            if stor255[arg1].field_512 >= sub_d964147c.length:
                revert with 0, 50
            if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
                revert with 0, 17
            if block.timestamp - stor255[arg1].field_2304 and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304:
                revert with 0, 17
            if not (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                    revert with 0, 17
                if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                    revert with 0, 17
                if startTime > stor255[arg1].field_2304:
                    if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        revert with 0, 17
                    if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        if stor255[arg1].field_1024 > -1:
                            revert with 0, 17
                    else:
                        if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                            revert with 0, 17
                        if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                            revert with 0, 17
                        if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                else:
                    if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        revert with 0, 17
                    if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        if stor255[arg1].field_1024 > -1:
                            revert with 0, 17
                    else:
                        if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                            revert with 0, 17
                        if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                            revert with 0, 17
                        if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                if not tiers.length:
                    revert with 0, 'Tiers not set!'
                if tiers.length < 1:
                    revert with 0, 17
                idx = tiers.length - 1
                while idx:
                    if idx >= tiers.length:
                        revert with 0, 50
                    mem[0] = 256
                    if stor255[arg1].field_1024 <= tiers[idx].field_0:
                        if idx < 1:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    if idx < tiers.length:
                        if idx != stor255[arg1].field_512:
                            stor255[arg1].field_512 = idx
                            emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                    stor255[arg1].field_2304 = block.timestamp
                if 0 < tiers.length:
                    if stor255[arg1].field_512 != 0:
                        stor255[arg1].field_512 = 0
                        emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
            else:
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xae82459f with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 100] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xcd1bbe3 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                mem[(2 * ceil32(return_data.size)) + 100] = uint32(ext_call.return_data[0])
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x298aaf41 with:
                        gas gas_remaining wei
                       args uint32(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) and ext_call.return_data[0] > -1 / (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                if (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) < (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.rewardsPool() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
                mem[(7 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 196] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000)
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.rewardsPool() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x57cb6dd4 with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                    mem[(10 * ceil32(return_data.size)) + 360] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 392] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000
                    mem[(10 * ceil32(return_data.size)) + 292] = 100
                    mem[(10 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
                    mem[(10 * ceil32(return_data.size)) + 424] = 32
                    mem[(10 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 488 len 128] = 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0
                    mem[(10 * ceil32(return_data.size)) + 588] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 520] == bool(mem[(10 * ceil32(return_data.size)) + 520])
                            if not mem[(10 * ceil32(return_data.size)) + 520]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                        revert with 0, 17
                    stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                    if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                        revert with 0, 17
                    if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                        revert with 0, 17
                    if startTime > stor255[arg1].field_2304:
                        if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            if stor255[arg1].field_1024 > -1:
                                revert with 0, 17
                        else:
                            if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                revert with 0, 17
                            if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                revert with 0, 17
                            if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                revert with 0, 17
                            stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                    else:
                        if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            if stor255[arg1].field_1024 > -1:
                                revert with 0, 17
                        else:
                            if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                revert with 0, 17
                            if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                revert with 0, 17
                            if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                revert with 0, 17
                            stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                    if not tiers.length:
                        revert with 0, 'Tiers not set!'
                    if tiers.length < 1:
                        revert with 0, 17
                    idx = tiers.length - 1
                    while idx:
                        if idx >= tiers.length:
                            revert with 0, 50
                        mem[0] = 256
                        if stor255[arg1].field_1024 <= tiers[idx].field_0:
                            if idx < 1:
                                revert with 0, 17
                            idx = idx - 1
                            continue 
                        if idx < tiers.length:
                            if idx != stor255[arg1].field_512:
                                stor255[arg1].field_512 = idx
                                emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                        stor255[arg1].field_2304 = block.timestamp
                    if 0 < tiers.length:
                        if stor255[arg1].field_512 != 0:
                            stor255[arg1].field_512 = 0
                            emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
                else:
                    mem[(7 * ceil32(return_data.size)) + 292] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                        if not mem[(7 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.rewardsPool() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x57cb6dd4 with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                        if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                            revert with 0, 17
                        if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                            revert with 0, 17
                        if startTime > stor255[arg1].field_2304:
                            if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        else:
                            if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        if not tiers.length:
                            revert with 0, 'Tiers not set!'
                        if tiers.length < 1:
                            revert with 0, 17
                        idx = tiers.length - 1
                        while idx:
                            if idx >= tiers.length:
                                revert with 0, 50
                            mem[0] = 256
                            if stor255[arg1].field_1024 <= tiers[idx].field_0:
                                if idx < 1:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if idx < tiers.length:
                                if idx != stor255[arg1].field_512:
                                    stor255[arg1].field_512 = idx
                                    emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                            stor255[arg1].field_2304 = block.timestamp
                        if 0 < tiers.length:
                            if stor255[arg1].field_512 != 0:
                                stor255[arg1].field_512 = 0
                                emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
                    else:
                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(13 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                            if not mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(13 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[arg1].field_2304 * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                        if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                            revert with 0, 17
                        if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                            revert with 0, 17
                        if startTime > stor255[arg1].field_2304:
                            if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        else:
                            if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        if not tiers.length:
                            revert with 0, 
                                        'Tiers not set!',
                                        mem[(13 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if tiers.length < 1:
                            revert with 0, 17
                        idx = tiers.length - 1
                        while idx:
                            if idx >= tiers.length:
                                revert with 0, 50
                            mem[0] = 256
                            if stor255[arg1].field_1024 <= tiers[idx].field_0:
                                if idx < 1:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if idx < tiers.length:
                                if idx != stor255[arg1].field_512:
                                    stor255[arg1].field_512 = idx
                                    emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, mem[(13 * ceil32(return_data.size)) + 618 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                            stor255[arg1].field_2304 = block.timestamp
                        if 0 < tiers.length:
                            if stor255[arg1].field_512 != 0:
                                stor255[arg1].field_512 = 0
                                emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, mem[(13 * ceil32(return_data.size)) + 618 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
        else:
            if block.timestamp < startTime:
                revert with 0, 17
            if stor255[arg1].field_512 >= sub_d964147c.length:
                revert with 0, 50
            if sub_d964147c[stor255[arg1].field_512].field_0 and stor255[arg1].field_1280 > -1 / sub_d964147c[stor255[arg1].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280:
                revert with 0, 17
            if block.timestamp - startTime and sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                revert with 0, 17
            if not (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                    revert with 0, 17
                if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                    revert with 0, 17
                if startTime > stor255[arg1].field_2304:
                    if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        revert with 0, 17
                    if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        if stor255[arg1].field_1024 > -1:
                            revert with 0, 17
                    else:
                        if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                            revert with 0, 17
                        if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                            revert with 0, 17
                        if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                else:
                    if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        revert with 0, 17
                    if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                        if stor255[arg1].field_1024 > -1:
                            revert with 0, 17
                    else:
                        if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                            revert with 0, 17
                        if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                            revert with 0, 17
                        if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                if not tiers.length:
                    revert with 0, 'Tiers not set!'
                if tiers.length < 1:
                    revert with 0, 17
                idx = tiers.length - 1
                while idx:
                    if idx >= tiers.length:
                        revert with 0, 50
                    mem[0] = 256
                    if stor255[arg1].field_1024 <= tiers[idx].field_0:
                        if idx < 1:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    if idx < tiers.length:
                        if idx != stor255[arg1].field_512:
                            stor255[arg1].field_512 = idx
                            emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                    stor255[arg1].field_2304 = block.timestamp
                if 0 < tiers.length:
                    if stor255[arg1].field_512 != 0:
                        stor255[arg1].field_512 = 0
                        emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
            else:
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xae82459f with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 100] = msg.sender
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xcd1bbe3 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[28 len 4]
                mem[(2 * ceil32(return_data.size)) + 100] = uint32(ext_call.return_data[0])
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x298aaf41 with:
                        gas gas_remaining wei
                       args uint32(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) and ext_call.return_data[0] > -1 / (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                if (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) < (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000:
                    revert with 0, 17
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0xb8746e73 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.rewardsPool() with:
                        gas gas_remaining wei
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(7 * ceil32(return_data.size)) + 132] = ext_call.return_data[12 len 20]
                mem[(7 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 196] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000)
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, 0, ext_call.return_data[12 len 20], msg.sender, (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - ((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000), 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.rewardsPool() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x57cb6dd4 with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 328] = address(ext_call.return_data[0])
                    mem[(10 * ceil32(return_data.size)) + 360] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + 392] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000
                    mem[(10 * ceil32(return_data.size)) + 292] = 100
                    mem[(10 * ceil32(return_data.size)) + 324 len 4] = unknown_0x23b872dd(?????)
                    mem[(10 * ceil32(return_data.size)) + 424] = 32
                    mem[(10 * ceil32(return_data.size)) + 456] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + 488 len 128] = 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0
                    mem[(10 * ceil32(return_data.size)) + 588] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(10 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + 520] == bool(mem[(10 * ceil32(return_data.size)) + 520])
                            if not mem[(10 * ceil32(return_data.size)) + 520]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                        revert with 0, 17
                    stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                    if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                        revert with 0, 17
                    if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                        revert with 0, 17
                    if startTime > stor255[arg1].field_2304:
                        if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            if stor255[arg1].field_1024 > -1:
                                revert with 0, 17
                        else:
                            if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                revert with 0, 17
                            if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                revert with 0, 17
                            if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                revert with 0, 17
                            stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                    else:
                        if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            revert with 0, 17
                        if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                            if stor255[arg1].field_1024 > -1:
                                revert with 0, 17
                        else:
                            if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                revert with 0, 17
                            if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                revert with 0, 17
                            if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                revert with 0, 17
                            stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                    if not tiers.length:
                        revert with 0, 'Tiers not set!'
                    if tiers.length < 1:
                        revert with 0, 17
                    idx = tiers.length - 1
                    while idx:
                        if idx >= tiers.length:
                            revert with 0, 50
                        mem[0] = 256
                        if stor255[arg1].field_1024 <= tiers[idx].field_0:
                            if idx < 1:
                                revert with 0, 17
                            idx = idx - 1
                            continue 
                        if idx < tiers.length:
                            if idx != stor255[arg1].field_512:
                                stor255[arg1].field_512 = idx
                                emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                        stor255[arg1].field_2304 = block.timestamp
                    if 0 < tiers.length:
                        if stor255[arg1].field_512 != 0:
                            stor255[arg1].field_512 = 0
                            emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
                else:
                    mem[(7 * ceil32(return_data.size)) + 292] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                        if not mem[(7 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.rewardsPool() with:
                            gas gas_remaining wei
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(settingsAddress)
                    staticcall settingsAddress.0x57cb6dd4 with:
                            gas gas_remaining wei
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(ext_call.return_data[0])
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = ext_call.return_data[12 len 20]
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 100
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325 len 4] = unknown_0x23b872dd(?????)
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 128] = 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0
                    mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, address(ext_call.return_data[0]), ext_call.return_data[12 len 20], (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 * ext_call.return_data[0]) / 10000, 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                        if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                            revert with 0, 17
                        if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                            revert with 0, 17
                        if startTime > stor255[arg1].field_2304:
                            if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        else:
                            if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        if not tiers.length:
                            revert with 0, 'Tiers not set!'
                        if tiers.length < 1:
                            revert with 0, 17
                        idx = tiers.length - 1
                        while idx:
                            if idx >= tiers.length:
                                revert with 0, 50
                            mem[0] = 256
                            if stor255[arg1].field_1024 <= tiers[idx].field_0:
                                if idx < 1:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if idx < tiers.length:
                                if idx != stor255[arg1].field_512:
                                    stor255[arg1].field_512 = idx
                                    emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, msg.sender
                            stor255[arg1].field_2304 = block.timestamp
                        if 0 < tiers.length:
                            if stor255[arg1].field_512 != 0:
                                stor255[arg1].field_512 = 0
                                emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, msg.sender
                    else:
                        mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(13 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                            if not mem[(10 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            'SafeERC20: ERC20 operation did not succeed',
                                            mem[(13 * ceil32(return_data.size)) + 622 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if stor255[arg1].field_2048 > !((block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                            revert with 0, 17
                        stor255[arg1].field_2048 = stor255[arg1].field_2048 + (block.timestamp * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[arg1].field_512].field_0 * stor255[arg1].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)
                        if sub_dc204901 and stor255[arg1].field_1536 > -1 / sub_dc204901:
                            revert with 0, 17
                        if sub_dc204901 * stor255[arg1].field_1536 and sub_17b5ab0e > -1 / sub_dc204901 * stor255[arg1].field_1536:
                            revert with 0, 17
                        if startTime > stor255[arg1].field_2304:
                            if startTime > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < startTime + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - startTime - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (startTime * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        else:
                            if stor255[arg1].field_2304 > !(sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                revert with 0, 17
                            if block.timestamp < stor255[arg1].field_2304 + (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                if stor255[arg1].field_1024 > -1:
                                    revert with 0, 17
                            else:
                                if sub_36ffce2c and stor255[arg1].field_1792 > -1 / sub_36ffce2c:
                                    revert with 0, 17
                                if sub_36ffce2c * stor255[arg1].field_1792 and sub_003eb4cf > -1 / sub_36ffce2c * stor255[arg1].field_1792:
                                    revert with 0, 17
                                if block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6) and sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6 > -1 / block.timestamp - stor255[arg1].field_2304 - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6):
                                    revert with 0, 17
                                if stor255[arg1].field_1024 > !((block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)):
                                    revert with 0, 17
                                stor255[arg1].field_1024 = stor255[arg1].field_1024 + (block.timestamp * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (stor255[arg1].field_2304 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6) - (sub_dc204901 * stor255[arg1].field_1536 * sub_17b5ab0e / 100 * 10^6 * sub_36ffce2c * stor255[arg1].field_1792 * sub_003eb4cf / 100 * 10^6)
                        if not tiers.length:
                            revert with 0, 
                                        'Tiers not set!',
                                        mem[(13 * ceil32(return_data.size)) + 590 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if tiers.length < 1:
                            revert with 0, 17
                        idx = tiers.length - 1
                        while idx:
                            if idx >= tiers.length:
                                revert with 0, 50
                            mem[0] = 256
                            if stor255[arg1].field_1024 <= tiers[idx].field_0:
                                if idx < 1:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                            if idx < tiers.length:
                                if idx != stor255[arg1].field_512:
                                    stor255[arg1].field_512 = idx
                                    emit 0xac6620ca: arg1, idx, stor255[arg1].field_1024, block.timestamp, mem[(13 * ceil32(return_data.size)) + 618 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                            stor255[arg1].field_2304 = block.timestamp
                        if 0 < tiers.length:
                            if stor255[arg1].field_512 != 0:
                                stor255[arg1].field_512 = 0
                                emit 0xac6620ca: arg1, 0, stor255[arg1].field_1024, block.timestamp, mem[(13 * ceil32(return_data.size)) + 618 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
    stor255[arg1].field_2304 = block.timestamp
}

function upgrade(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xb91d850e with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'Must be owner of this brewery'
    mem[ceil32(return_data.size) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6352211e with:
            gas gas_remaining wei
           args arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be owner of this renovation'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1aaab6ab with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6410e2f3 with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4ee4017e with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(10 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(12 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(14 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(15 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(15 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(15 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (16 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (15 * ceil32(return_data.size)) + return_data.size + 96 > (15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _273 = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (16 * ceil32(return_data.size)) + ceil32(ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (16 * ceil32(return_data.size)) + ceil32(ceil32(mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        require mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + _273 + 32 <= return_data.size
                        mem[(16 * ceil32(return_data.size)) + 128 len ceil32(_273)] = mem[(15 * ceil32(return_data.size)) + mem[(15 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 128 len ceil32(_273)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _273:
                                stor255[arg1][].field_0 = Array(len=_273, data=mem[(16 * ceil32(return_data.size)) + 128 len _273])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _273:
                                stor255[arg1][].field_0 = Array(len=_273, data=mem[(16 * ceil32(return_data.size)) + 128 len _273])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(13 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(16 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(16 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(16 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (18 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _331 = mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (16 * ceil32(return_data.size)) + return_data.size + 96 > (16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _346 = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(18 * ceil32(return_data.size)) + 96] = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _331 + _346 + 32 <= return_data.size
                        mem[(18 * ceil32(return_data.size)) + 128 len ceil32(_346)] = mem[(16 * ceil32(return_data.size)) + _331 + 128 len ceil32(_346)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _346:
                                stor255[arg1][].field_0 = Array(len=_346, data=mem[(18 * ceil32(return_data.size)) + 128 len _346])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _346:
                                stor255[arg1][].field_0 = Array(len=_346, data=mem[(18 * ceil32(return_data.size)) + 128 len _346])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                mem[(11 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x985a6053 with:
                        gas gas_remaining wei
                       args arg2
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor255[arg1].field_1792 = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(13 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(16 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(16 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(16 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (18 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _332 = mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (16 * ceil32(return_data.size)) + return_data.size + 96 > (16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _347 = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(18 * ceil32(return_data.size)) + 96] = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _332 + _347 + 32 <= return_data.size
                        mem[(18 * ceil32(return_data.size)) + 128 len ceil32(_347)] = mem[(16 * ceil32(return_data.size)) + _332 + 128 len ceil32(_347)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _347:
                                stor255[arg1][].field_0 = Array(len=_347, data=mem[(18 * ceil32(return_data.size)) + 128 len _347])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _347:
                                stor255[arg1][].field_0 = Array(len=_347, data=mem[(18 * ceil32(return_data.size)) + 128 len _347])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(14 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _399 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _412 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _399 + _412 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_412)] = mem[(18 * ceil32(return_data.size)) + _399 + 128 len ceil32(_412)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _412:
                                stor255[arg1][].field_0 = Array(len=_412, data=mem[(19 * ceil32(return_data.size)) + 128 len _412])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _412:
                                stor255[arg1][].field_0 = Array(len=_412, data=mem[(19 * ceil32(return_data.size)) + 128 len _412])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        else:
            mem[(8 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x985a6053 with:
                    gas gas_remaining wei
                   args arg2
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor255[arg1].field_1536 = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4ee4017e with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(13 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(16 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(16 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(16 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (18 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _334 = mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (16 * ceil32(return_data.size)) + return_data.size + 96 > (16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _352 = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(18 * ceil32(return_data.size)) + 96] = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _334 + _352 + 32 <= return_data.size
                        mem[(18 * ceil32(return_data.size)) + 128 len ceil32(_352)] = mem[(16 * ceil32(return_data.size)) + _334 + 128 len ceil32(_352)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _352:
                                stor255[arg1][].field_0 = Array(len=_352, data=mem[(18 * ceil32(return_data.size)) + 128 len _352])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _352:
                                stor255[arg1][].field_0 = Array(len=_352, data=mem[(18 * ceil32(return_data.size)) + 128 len _352])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(14 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _401 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _413 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _401 + _413 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_413)] = mem[(18 * ceil32(return_data.size)) + _401 + 128 len ceil32(_413)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _413:
                                stor255[arg1][].field_0 = Array(len=_413, data=mem[(19 * ceil32(return_data.size)) + 128 len _413])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _413:
                                stor255[arg1][].field_0 = Array(len=_413, data=mem[(19 * ceil32(return_data.size)) + 128 len _413])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                mem[(12 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x985a6053 with:
                        gas gas_remaining wei
                       args arg2
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor255[arg1].field_1792 = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(14 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _402 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _414 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _402 + _414 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_414)] = mem[(18 * ceil32(return_data.size)) + _402 + 128 len ceil32(_414)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _414:
                                stor255[arg1][].field_0 = Array(len=_414, data=mem[(19 * ceil32(return_data.size)) + 128 len _414])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _414:
                                stor255[arg1][].field_0 = Array(len=_414, data=mem[(19 * ceil32(return_data.size)) + 128 len _414])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(18 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(18 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(19 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _451 = mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + return_data.size + 96 > (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _462 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(20 * ceil32(return_data.size)) + 96] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _451 + _462 + 32 <= return_data.size
                        mem[(20 * ceil32(return_data.size)) + 128 len ceil32(_462)] = mem[(19 * ceil32(return_data.size)) + _451 + 128 len ceil32(_462)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _462:
                                stor255[arg1][].field_0 = Array(len=_462, data=mem[(20 * ceil32(return_data.size)) + 128 len _462])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _462:
                                stor255[arg1][].field_0 = Array(len=_462, data=mem[(20 * ceil32(return_data.size)) + 128 len _462])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
    else:
        mem[(6 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x985a6053 with:
                gas gas_remaining wei
               args arg2
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor255[arg1].field_1280 = ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6410e2f3 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 100] = arg2
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4ee4017e with:
                    gas gas_remaining wei
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(11 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(13 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(16 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(16 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(16 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (18 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _337 = mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (16 * ceil32(return_data.size)) + return_data.size + 96 > (16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _363 = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (18 * ceil32(return_data.size)) + ceil32(ceil32(mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(18 * ceil32(return_data.size)) + 96] = mem[(16 * ceil32(return_data.size)) + mem[(16 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _337 + _363 + 32 <= return_data.size
                        mem[(18 * ceil32(return_data.size)) + 128 len ceil32(_363)] = mem[(16 * ceil32(return_data.size)) + _337 + 128 len ceil32(_363)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _363:
                                stor255[arg1][].field_0 = Array(len=_363, data=mem[(18 * ceil32(return_data.size)) + 128 len _363])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _363:
                                stor255[arg1][].field_0 = Array(len=_363, data=mem[(18 * ceil32(return_data.size)) + 128 len _363])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(14 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _405 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _419 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _405 + _419 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_419)] = mem[(18 * ceil32(return_data.size)) + _405 + 128 len ceil32(_419)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _419:
                                stor255[arg1][].field_0 = Array(len=_419, data=mem[(19 * ceil32(return_data.size)) + 128 len _419])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _419:
                                stor255[arg1][].field_0 = Array(len=_419, data=mem[(19 * ceil32(return_data.size)) + 128 len _419])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                mem[(12 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x985a6053 with:
                        gas gas_remaining wei
                       args arg2
                mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor255[arg1].field_1792 = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(14 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _406 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _420 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _406 + _420 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_420)] = mem[(18 * ceil32(return_data.size)) + _406 + 128 len ceil32(_420)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _420:
                                stor255[arg1][].field_0 = Array(len=_420, data=mem[(19 * ceil32(return_data.size)) + 128 len _420])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _420:
                                stor255[arg1][].field_0 = Array(len=_420, data=mem[(19 * ceil32(return_data.size)) + 128 len _420])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(18 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(18 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(19 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _455 = mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + return_data.size + 96 > (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _463 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(20 * ceil32(return_data.size)) + 96] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _455 + _463 + 32 <= return_data.size
                        mem[(20 * ceil32(return_data.size)) + 128 len ceil32(_463)] = mem[(19 * ceil32(return_data.size)) + _455 + 128 len ceil32(_463)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _463:
                                stor255[arg1][].field_0 = Array(len=_463, data=mem[(20 * ceil32(return_data.size)) + 128 len _463])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _463:
                                stor255[arg1][].field_0 = Array(len=_463, data=mem[(20 * ceil32(return_data.size)) + 128 len _463])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
        else:
            mem[(10 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x985a6053 with:
                    gas gas_remaining wei
                   args arg2
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor255[arg1].field_1536 = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x4ee4017e with:
                    gas gas_remaining wei
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(12 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[(12 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] != ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(14 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(18 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(18 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(18 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (19 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _408 = mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (18 * ceil32(return_data.size)) + return_data.size + 96 > (18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _425 = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (19 * ceil32(return_data.size)) + ceil32(ceil32(mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(19 * ceil32(return_data.size)) + 96] = mem[(18 * ceil32(return_data.size)) + mem[(18 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _408 + _425 + 32 <= return_data.size
                        mem[(19 * ceil32(return_data.size)) + 128 len ceil32(_425)] = mem[(18 * ceil32(return_data.size)) + _408 + 128 len ceil32(_425)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _425:
                                stor255[arg1][].field_0 = Array(len=_425, data=mem[(19 * ceil32(return_data.size)) + 128 len _425])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _425:
                                stor255[arg1][].field_0 = Array(len=_425, data=mem[(19 * ceil32(return_data.size)) + 128 len _425])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(15 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(18 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(18 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(19 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _457 = mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + return_data.size + 96 > (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _464 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(20 * ceil32(return_data.size)) + 96] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _457 + _464 + 32 <= return_data.size
                        mem[(20 * ceil32(return_data.size)) + 128 len ceil32(_464)] = mem[(19 * ceil32(return_data.size)) + _457 + 128 len ceil32(_464)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _464:
                                stor255[arg1][].field_0 = Array(len=_464, data=mem[(20 * ceil32(return_data.size)) + 128 len _464])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _464:
                                stor255[arg1][].field_0 = Array(len=_464, data=mem[(20 * ceil32(return_data.size)) + 128 len _464])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
            else:
                mem[(13 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x985a6053 with:
                        gas gas_remaining wei
                       args arg2
                mem[(13 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                stor255[arg1].field_1792 = ext_call.return_data[0]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x66674eaa with:
                        gas gas_remaining wei
                mem[(14 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(15 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                mem[(15 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != ext_call.return_data[0]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(18 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(18 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(19 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(19 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(19 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (20 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _458 = mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (19 * ceil32(return_data.size)) + return_data.size + 96 > (19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _465 = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (20 * ceil32(return_data.size)) + ceil32(ceil32(mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(20 * ceil32(return_data.size)) + 96] = mem[(19 * ceil32(return_data.size)) + mem[(19 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _458 + _465 + 32 <= return_data.size
                        mem[(20 * ceil32(return_data.size)) + 128 len ceil32(_465)] = mem[(19 * ceil32(return_data.size)) + _458 + 128 len ceil32(_465)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _465:
                                stor255[arg1][].field_0 = Array(len=_465, data=mem[(20 * ceil32(return_data.size)) + 128 len _465])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _465:
                                stor255[arg1][].field_0 = Array(len=_465, data=mem[(20 * ceil32(return_data.size)) + 128 len _465])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                else:
                    mem[(16 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x985a6053 with:
                            gas gas_remaining wei
                           args arg2
                    mem[(16 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor255[arg1].field_256 = ext_call.return_data[0]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xda512e4 with:
                            gas gas_remaining wei
                    mem[(18 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(19 * ceil32(return_data.size)) + 100] = arg2
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getType(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg2
                    mem[(19 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] == ext_call.return_data[0]:
                        mem[(20 * ceil32(return_data.size)) + 96] = 0x201387f800000000000000000000000000000000000000000000000000000000
                        mem[(20 * ceil32(return_data.size)) + 100] = arg2
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x201387f8 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(20 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (21 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _503 = mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (20 * ceil32(return_data.size)) + return_data.size + 96 > (20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 127
                        _516 = mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        if mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 1 < 0 or (21 * ceil32(return_data.size)) + ceil32(ceil32(mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = (21 * ceil32(return_data.size)) + ceil32(ceil32(mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96])) + 97
                        mem[(21 * ceil32(return_data.size)) + 96] = mem[(20 * ceil32(return_data.size)) + mem[(20 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg2) >> 32 + 96]
                        require _503 + _516 + 32 <= return_data.size
                        mem[(21 * ceil32(return_data.size)) + 128 len ceil32(_516)] = mem[(20 * ceil32(return_data.size)) + _503 + 128 len ceil32(_516)]
                        if bool(stor255[arg1].field_0):
                            if bool(stor255[arg1].field_0) == uint255(stor255[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if _516:
                                stor255[arg1][].field_0 = Array(len=_516, data=mem[(21 * ceil32(return_data.size)) + 128 len _516])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while (uint255(stor255[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            if bool(stor255[arg1].field_0) == stor255[arg1].field_1 % 128 < 32:
                                revert with 0, 34
                            if _516:
                                stor255[arg1][].field_0 = Array(len=_516, data=mem[(21 * ceil32(return_data.size)) + 128 len _516])
                            else:
                                stor255[arg1].field_0 = 0
                                idx = 0
                                while stor255[arg1].field_1 % 128 + 31 / 32 > idx:
                                    stor255[arg1][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).consume(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function compound(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if block.timestamp < startTime:
            mem[32] = 255
            if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                revert with 0, 50
            mem[0] = 257
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                revert with 0, 17
            if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 0, 17
        else:
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 0 / ext_call.return_data[0] < arg1:
        revert with 0, 'Cannot compound this amount'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        if block.timestamp < startTime:
            mem[32] = 255
            if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                revert with 0, 50
            mem[0] = 257
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                revert with 0, 17
            if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 0, 17
        else:
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if 0 < arg1 * ext_call.return_data[0]:
        revert with 0, 'You dont have enough pending MEAD'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 104
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 151)
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xcfe19c66 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8039 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 0 >= mem[_8039]:
            if block.timestamp < startTime:
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8049 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8049] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8068 = mem[_8059]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8068:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8090 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8090] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8166 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8166] = _8049
                            mem[_8166 + 32] = 0
                            mem[_8166 + 64] = 0
                            mem[_8166 + 96] = 1
                            mem[_8166 + 128] = 0
                            mem[_8166 + 160] = 10000
                            mem[_8166 + 192] = 10000
                            mem[_8166 + 224] = 10000
                            mem[_8166 + 256] = 0
                            mem[_8166 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11372] == Mask(32, 224, mem[_11372])
                            if Mask(32, 224, mem[_11372]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11642 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11642] = _8049
                            mem[_11642 + 32] = 0
                            mem[_11642 + 64] = 0
                            mem[_11642 + 96] = 1
                            mem[_11642 + 128] = 0
                            mem[_11642 + 160] = 10000
                            mem[_11642 + 192] = 10000
                            mem[_11642 + 224] = 10000
                            mem[_11642 + 256] = 0
                            mem[_11642 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11645 = mem[_8049]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11645:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11645) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11645 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11645 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11645:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11645) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11645 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11645 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8203 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8203] = _8049
                            mem[_8203 + 32] = 0
                            mem[_8203 + 64] = 0
                            mem[_8203 + 96] = 1
                            mem[_8203 + 128] = 0
                            mem[_8203 + 160] = 10000
                            mem[_8203 + 192] = 10000
                            mem[_8203 + 224] = 10000
                            mem[_8203 + 256] = 0
                            mem[_8203 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11374] == Mask(32, 224, mem[_11374])
                            if Mask(32, 224, mem[_11374]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11650 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11650] = _8049
                            mem[_11650 + 32] = 0
                            mem[_11650 + 64] = 0
                            mem[_11650 + 96] = 1
                            mem[_11650 + 128] = 0
                            mem[_11650 + 160] = 10000
                            mem[_11650 + 192] = 10000
                            mem[_11650 + 224] = 10000
                            mem[_11650 + 256] = 0
                            mem[_11650 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11653 = mem[_8049]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11653:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11653) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11653 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11653 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11653:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11653) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11653 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11653 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor154[stor153.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                stor154[stor153.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 103
                ownerOf[stor153.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if not ext_code.size(msg.sender):
                    _8217 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_8217] = _8049
                    mem[_8217 + 32] = 0
                    mem[_8217 + 64] = 0
                    mem[_8217 + 96] = 1
                    mem[_8217 + 128] = 0
                    mem[_8217 + 160] = 10000
                    mem[_8217 + 192] = 10000
                    mem[_8217 + 224] = 10000
                    mem[_8217 + 256] = 0
                    mem[_8217 + 288] = block.timestamp
                    mem[32] = 255
                    if bool(stor255[stor153.length + 1].field_0):
                        if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenByIndex.length + 1, 255)
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenByIndex.length + 1, 255)
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                _11376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11376] == Mask(32, 224, mem[_11376])
                if Mask(32, 224, mem[_11376]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _11658 = mem[64]
                mem[64] = mem[64] + 320
                mem[_11658] = _8049
                mem[_11658 + 32] = 0
                mem[_11658 + 64] = 0
                mem[_11658 + 96] = 1
                mem[_11658 + 128] = 0
                mem[_11658 + 160] = 10000
                mem[_11658 + 192] = 10000
                mem[_11658 + 224] = 10000
                mem[_11658 + 256] = 0
                mem[_11658 + 288] = block.timestamp
                mem[0] = tokenByIndex.length + 1
                mem[32] = 255
                _11661 = mem[_8049]
                if bool(stor255[stor153.length + 1].field_0):
                    if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(tokenByIndex.length + 1, 255)
                    if not _11661:
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor255[stor153.length + 1].field_0 = (2 * _11661) + 1
                        t = sha3(sha3(tokenByIndex.length + 1, 255))
                        s = _8049 + 32
                        while _8049 + _11661 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11661 + 31) >> 5)
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(tokenByIndex.length + 1, 255)
                if not _11661:
                    stor255[stor153.length + 1].field_0 = 0
                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor255[stor153.length + 1].field_0 = (2 * _11661) + 1
                t = sha3(sha3(tokenByIndex.length + 1, 255))
                s = _8049 + 32
                while _8049 + _11661 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11661 + 31) >> 5)
                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor255[stor153.length + 1].field_256 = 0
                stor255[stor153.length + 1].field_512 = 0
                uint8(stor255[stor153.length + 1].field_768) = 1
                stor255[stor153.length + 1].field_1024 = 0
                stor255[stor153.length + 1].field_1280 = 10000
                stor255[stor153.length + 1].field_1536 = 10000
                stor255[stor153.length + 1].field_1792 = 10000
                stor255[stor153.length + 1].field_2048 = 0
                stor255[stor153.length + 1].field_2304 = block.timestamp
                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                continue 
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 < (block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8056 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8056] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8071 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8075 = mem[_8071]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8075:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8093 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8093] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8184 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8184] = _8056
                            mem[_8184 + 32] = 0
                            mem[_8184 + 64] = 0
                            mem[_8184 + 96] = 1
                            mem[_8184 + 128] = 0
                            mem[_8184 + 160] = 10000
                            mem[_8184 + 192] = 10000
                            mem[_8184 + 224] = 10000
                            mem[_8184 + 256] = 0
                            mem[_8184 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11360] == Mask(32, 224, mem[_11360])
                            if Mask(32, 224, mem[_11360]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11594 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11594] = _8056
                            mem[_11594 + 32] = 0
                            mem[_11594 + 64] = 0
                            mem[_11594 + 96] = 1
                            mem[_11594 + 128] = 0
                            mem[_11594 + 160] = 10000
                            mem[_11594 + 192] = 10000
                            mem[_11594 + 224] = 10000
                            mem[_11594 + 256] = 0
                            mem[_11594 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11597 = mem[_8056]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11597:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11597) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11597 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11597 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11597:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11597) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11597 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11597 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8226 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8226] = _8056
                            mem[_8226 + 32] = 0
                            mem[_8226 + 64] = 0
                            mem[_8226 + 96] = 1
                            mem[_8226 + 128] = 0
                            mem[_8226 + 160] = 10000
                            mem[_8226 + 192] = 10000
                            mem[_8226 + 224] = 10000
                            mem[_8226 + 256] = 0
                            mem[_8226 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11362] == Mask(32, 224, mem[_11362])
                            if Mask(32, 224, mem[_11362]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11602 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11602] = _8056
                            mem[_11602 + 32] = 0
                            mem[_11602 + 64] = 0
                            mem[_11602 + 96] = 1
                            mem[_11602 + 128] = 0
                            mem[_11602 + 160] = 10000
                            mem[_11602 + 192] = 10000
                            mem[_11602 + 224] = 10000
                            mem[_11602 + 256] = 0
                            mem[_11602 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11605 = mem[_8056]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11605:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11605) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11605 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11605 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11605:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11605) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11605 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11605 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor154[stor153.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                    stor154[stor153.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    ownerOf[stor153.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if not ext_code.size(msg.sender):
                        _8258 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_8258] = _8056
                        mem[_8258 + 32] = 0
                        mem[_8258 + 64] = 0
                        mem[_8258 + 96] = 1
                        mem[_8258 + 128] = 0
                        mem[_8258 + 160] = 10000
                        mem[_8258 + 192] = 10000
                        mem[_8258 + 224] = 10000
                        mem[_8258 + 256] = 0
                        mem[_8258 + 288] = block.timestamp
                        mem[32] = 255
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _11364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11364] == Mask(32, 224, mem[_11364])
                        if Mask(32, 224, mem[_11364]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _11610 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_11610] = _8056
                        mem[_11610 + 32] = 0
                        mem[_11610 + 64] = 0
                        mem[_11610 + 96] = 1
                        mem[_11610 + 128] = 0
                        mem[_11610 + 160] = 10000
                        mem[_11610 + 192] = 10000
                        mem[_11610 + 224] = 10000
                        mem[_11610 + 256] = 0
                        mem[_11610 + 288] = block.timestamp
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 255
                        _11613 = mem[_8056]
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11613:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor255[stor153.length + 1].field_0 = (2 * _11613) + 1
                                t = sha3(sha3(tokenByIndex.length + 1, 255))
                                s = _8056 + 32
                                while _8056 + _11613 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11613 + 31) >> 5)
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11613:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor255[stor153.length + 1].field_256 = 0
                                stor255[stor153.length + 1].field_512 = 0
                                uint8(stor255[stor153.length + 1].field_768) = 1
                                stor255[stor153.length + 1].field_1024 = 0
                                stor255[stor153.length + 1].field_1280 = 10000
                                stor255[stor153.length + 1].field_1536 = 10000
                                stor255[stor153.length + 1].field_1792 = 10000
                                stor255[stor153.length + 1].field_2048 = 0
                                stor255[stor153.length + 1].field_2304 = block.timestamp
                                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor255[stor153.length + 1].field_0 = (2 * _11613) + 1
                            t = sha3(sha3(tokenByIndex.length + 1, 255))
                            s = _8056 + 32
                            while _8056 + _11613 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11613 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 < (block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8058 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8058] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8076 = mem[_8072]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8076:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8094 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8094] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8190 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8190] = _8058
                            mem[_8190 + 32] = 0
                            mem[_8190 + 64] = 0
                            mem[_8190 + 96] = 1
                            mem[_8190 + 128] = 0
                            mem[_8190 + 160] = 10000
                            mem[_8190 + 192] = 10000
                            mem[_8190 + 224] = 10000
                            mem[_8190 + 256] = 0
                            mem[_8190 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11366 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11366] == Mask(32, 224, mem[_11366])
                            if Mask(32, 224, mem[_11366]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11618 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11618] = _8058
                            mem[_11618 + 32] = 0
                            mem[_11618 + 64] = 0
                            mem[_11618 + 96] = 1
                            mem[_11618 + 128] = 0
                            mem[_11618 + 160] = 10000
                            mem[_11618 + 192] = 10000
                            mem[_11618 + 224] = 10000
                            mem[_11618 + 256] = 0
                            mem[_11618 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11621 = mem[_8058]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11621:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11621) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11621 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11621 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11621:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11621) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11621 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11621 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8234 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8234] = _8058
                            mem[_8234 + 32] = 0
                            mem[_8234 + 64] = 0
                            mem[_8234 + 96] = 1
                            mem[_8234 + 128] = 0
                            mem[_8234 + 160] = 10000
                            mem[_8234 + 192] = 10000
                            mem[_8234 + 224] = 10000
                            mem[_8234 + 256] = 0
                            mem[_8234 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11368] == Mask(32, 224, mem[_11368])
                            if Mask(32, 224, mem[_11368]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11626 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11626] = _8058
                            mem[_11626 + 32] = 0
                            mem[_11626 + 64] = 0
                            mem[_11626 + 96] = 1
                            mem[_11626 + 128] = 0
                            mem[_11626 + 160] = 10000
                            mem[_11626 + 192] = 10000
                            mem[_11626 + 224] = 10000
                            mem[_11626 + 256] = 0
                            mem[_11626 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11629 = mem[_8058]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11629:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11629) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11629 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11629 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11629:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11629) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11629 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11629 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor154[stor153.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                    stor154[stor153.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    ownerOf[stor153.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if not ext_code.size(msg.sender):
                        _8265 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_8265] = _8058
                        mem[_8265 + 32] = 0
                        mem[_8265 + 64] = 0
                        mem[_8265 + 96] = 1
                        mem[_8265 + 128] = 0
                        mem[_8265 + 160] = 10000
                        mem[_8265 + 192] = 10000
                        mem[_8265 + 224] = 10000
                        mem[_8265 + 256] = 0
                        mem[_8265 + 288] = block.timestamp
                        mem[32] = 255
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _11370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11370] == Mask(32, 224, mem[_11370])
                        if Mask(32, 224, mem[_11370]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _11634 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_11634] = _8058
                        mem[_11634 + 32] = 0
                        mem[_11634 + 64] = 0
                        mem[_11634 + 96] = 1
                        mem[_11634 + 128] = 0
                        mem[_11634 + 160] = 10000
                        mem[_11634 + 192] = 10000
                        mem[_11634 + 224] = 10000
                        mem[_11634 + 256] = 0
                        mem[_11634 + 288] = block.timestamp
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 255
                        _11637 = mem[_8058]
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11637:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor255[stor153.length + 1].field_0 = (2 * _11637) + 1
                                t = sha3(sha3(tokenByIndex.length + 1, 255))
                                s = _8058 + 32
                                while _8058 + _11637 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11637 + 31) >> 5)
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11637:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor255[stor153.length + 1].field_256 = 0
                                stor255[stor153.length + 1].field_512 = 0
                                uint8(stor255[stor153.length + 1].field_768) = 1
                                stor255[stor153.length + 1].field_1024 = 0
                                stor255[stor153.length + 1].field_1280 = 10000
                                stor255[stor153.length + 1].field_1536 = 10000
                                stor255[stor153.length + 1].field_1792 = 10000
                                stor255[stor153.length + 1].field_2048 = 0
                                stor255[stor153.length + 1].field_2304 = block.timestamp
                                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor255[stor153.length + 1].field_0 = (2 * _11637) + 1
                            t = sha3(sha3(tokenByIndex.length + 1, 255))
                            s = _8058 + 32
                            while _8058 + _11637 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11637 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            stor255[stor153.length + 1].field_256 = 0
            stor255[stor153.length + 1].field_512 = 0
            uint8(stor255[stor153.length + 1].field_768) = 1
            stor255[stor153.length + 1].field_1024 = 0
            stor255[stor153.length + 1].field_1280 = 10000
            stor255[stor153.length + 1].field_1536 = 10000
            stor255[stor153.length + 1].field_1792 = 10000
            stor255[stor153.length + 1].field_2048 = 0
            stor255[stor153.length + 1].field_2304 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function compoundAll() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if block.timestamp < startTime:
            mem[32] = 255
            if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                revert with 0, 50
            mem[0] = 257
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                revert with 0, 17
            if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 0, 17
        else:
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 0 / ext_call.return_data[0] <= 0:
        revert with 0, 'You dont have enough pending MEAD'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        if block.timestamp < startTime:
            mem[32] = 255
            if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                revert with 0, 50
            mem[0] = 257
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                revert with 0, 17
            if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                revert with 0, 17
            if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                revert with 0, 17
        else:
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                mem[32] = 255
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                mem[0] = 257
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 > !((block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6)):
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0xcfe19c66 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if 0 / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 0 / ext_call.return_data[0]:
        revert with 0, 17
    if 0 < 0 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 0, 'You dont have enough pending MEAD'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 104
    idx = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 151)
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xcfe19c66 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _8039 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 0 >= mem[_8039]:
            if block.timestamp < startTime:
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if False and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > 0:
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8049 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8049] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8059 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8068 = mem[_8059]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8068:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8090 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8090] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8166 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8166] = _8049
                            mem[_8166 + 32] = 0
                            mem[_8166 + 64] = 0
                            mem[_8166 + 96] = 1
                            mem[_8166 + 128] = 0
                            mem[_8166 + 160] = 10000
                            mem[_8166 + 192] = 10000
                            mem[_8166 + 224] = 10000
                            mem[_8166 + 256] = 0
                            mem[_8166 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11372] == Mask(32, 224, mem[_11372])
                            if Mask(32, 224, mem[_11372]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11642 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11642] = _8049
                            mem[_11642 + 32] = 0
                            mem[_11642 + 64] = 0
                            mem[_11642 + 96] = 1
                            mem[_11642 + 128] = 0
                            mem[_11642 + 160] = 10000
                            mem[_11642 + 192] = 10000
                            mem[_11642 + 224] = 10000
                            mem[_11642 + 256] = 0
                            mem[_11642 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11645 = mem[_8049]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11645:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11645) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11645 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11645 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11645:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11645) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11645 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11645 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8203 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8203] = _8049
                            mem[_8203 + 32] = 0
                            mem[_8203 + 64] = 0
                            mem[_8203 + 96] = 1
                            mem[_8203 + 128] = 0
                            mem[_8203 + 160] = 10000
                            mem[_8203 + 192] = 10000
                            mem[_8203 + 224] = 10000
                            mem[_8203 + 256] = 0
                            mem[_8203 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11374] == Mask(32, 224, mem[_11374])
                            if Mask(32, 224, mem[_11374]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11650 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11650] = _8049
                            mem[_11650 + 32] = 0
                            mem[_11650 + 64] = 0
                            mem[_11650 + 96] = 1
                            mem[_11650 + 128] = 0
                            mem[_11650 + 160] = 10000
                            mem[_11650 + 192] = 10000
                            mem[_11650 + 224] = 10000
                            mem[_11650 + 256] = 0
                            mem[_11650 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11653 = mem[_8049]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11653:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11653) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11653 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11653 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11653:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11653) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8049 + 32
                                    while _8049 + _11653 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11653 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor154[stor153.length + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                stor154[stor153.length + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = tokenByIndex.length + 1
                mem[32] = 103
                ownerOf[stor153.length + 1] = msg.sender
                emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                if not ext_code.size(msg.sender):
                    _8217 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_8217] = _8049
                    mem[_8217 + 32] = 0
                    mem[_8217 + 64] = 0
                    mem[_8217 + 96] = 1
                    mem[_8217 + 128] = 0
                    mem[_8217 + 160] = 10000
                    mem[_8217 + 192] = 10000
                    mem[_8217 + 224] = 10000
                    mem[_8217 + 256] = 0
                    mem[_8217 + 288] = block.timestamp
                    mem[32] = 255
                    if bool(stor255[stor153.length + 1].field_0):
                        if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenByIndex.length + 1, 255)
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(tokenByIndex.length + 1, 255)
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _8090 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                _11376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11376] == Mask(32, 224, mem[_11376])
                if Mask(32, 224, mem[_11376]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                _11658 = mem[64]
                mem[64] = mem[64] + 320
                mem[_11658] = _8049
                mem[_11658 + 32] = 0
                mem[_11658 + 64] = 0
                mem[_11658 + 96] = 1
                mem[_11658 + 128] = 0
                mem[_11658 + 160] = 10000
                mem[_11658 + 192] = 10000
                mem[_11658 + 224] = 10000
                mem[_11658 + 256] = 0
                mem[_11658 + 288] = block.timestamp
                mem[0] = tokenByIndex.length + 1
                mem[32] = 255
                _11661 = mem[_8049]
                if bool(stor255[stor153.length + 1].field_0):
                    if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(tokenByIndex.length + 1, 255)
                    if not _11661:
                        stor255[stor153.length + 1].field_0 = 0
                        s = sha3(sha3(tokenByIndex.length + 1, 255))
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor255[stor153.length + 1].field_0 = (2 * _11661) + 1
                        t = sha3(sha3(tokenByIndex.length + 1, 255))
                        s = _8049 + 32
                        while _8049 + _11661 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11661 + 31) >> 5)
                        while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(tokenByIndex.length + 1, 255)
                if not _11661:
                    stor255[stor153.length + 1].field_0 = 0
                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor255[stor153.length + 1].field_256 = 0
                    stor255[stor153.length + 1].field_512 = 0
                    uint8(stor255[stor153.length + 1].field_768) = 1
                    stor255[stor153.length + 1].field_1024 = 0
                    stor255[stor153.length + 1].field_1280 = 10000
                    stor255[stor153.length + 1].field_1536 = 10000
                    stor255[stor153.length + 1].field_1792 = 10000
                    stor255[stor153.length + 1].field_2048 = 0
                    stor255[stor153.length + 1].field_2304 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor255[stor153.length + 1].field_0 = (2 * _11661) + 1
                t = sha3(sha3(tokenByIndex.length + 1, 255))
                s = _8049 + 32
                while _8049 + _11661 + 32 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11661 + 31) >> 5)
                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor255[stor153.length + 1].field_256 = 0
                stor255[stor153.length + 1].field_512 = 0
                uint8(stor255[stor153.length + 1].field_768) = 1
                stor255[stor153.length + 1].field_1024 = 0
                stor255[stor153.length + 1].field_1280 = 10000
                stor255[stor153.length + 1].field_1536 = 10000
                stor255[stor153.length + 1].field_1792 = 10000
                stor255[stor153.length + 1].field_2048 = 0
                stor255[stor153.length + 1].field_2304 = block.timestamp
                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                    revert with 0, 17
                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                continue 
            if stor255[stor151[address(msg.sender)][idx]].field_2304 >= startTime:
                if block.timestamp < stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304 and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - stor255[stor151[address(msg.sender)][idx]].field_2304:
                    revert with 0, 17
                if 0 < (block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (stor255[stor151[address(msg.sender)][idx]].field_2304 * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8056 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8056] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8071 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8075 = mem[_8071]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8075:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8093 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8093] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8184 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8184] = _8056
                            mem[_8184 + 32] = 0
                            mem[_8184 + 64] = 0
                            mem[_8184 + 96] = 1
                            mem[_8184 + 128] = 0
                            mem[_8184 + 160] = 10000
                            mem[_8184 + 192] = 10000
                            mem[_8184 + 224] = 10000
                            mem[_8184 + 256] = 0
                            mem[_8184 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11360 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11360] == Mask(32, 224, mem[_11360])
                            if Mask(32, 224, mem[_11360]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11594 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11594] = _8056
                            mem[_11594 + 32] = 0
                            mem[_11594 + 64] = 0
                            mem[_11594 + 96] = 1
                            mem[_11594 + 128] = 0
                            mem[_11594 + 160] = 10000
                            mem[_11594 + 192] = 10000
                            mem[_11594 + 224] = 10000
                            mem[_11594 + 256] = 0
                            mem[_11594 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11597 = mem[_8056]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11597:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11597) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11597 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11597 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11597:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11597) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11597 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11597 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8226 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8226] = _8056
                            mem[_8226 + 32] = 0
                            mem[_8226 + 64] = 0
                            mem[_8226 + 96] = 1
                            mem[_8226 + 128] = 0
                            mem[_8226 + 160] = 10000
                            mem[_8226 + 192] = 10000
                            mem[_8226 + 224] = 10000
                            mem[_8226 + 256] = 0
                            mem[_8226 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11362 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11362] == Mask(32, 224, mem[_11362])
                            if Mask(32, 224, mem[_11362]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11602 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11602] = _8056
                            mem[_11602 + 32] = 0
                            mem[_11602 + 64] = 0
                            mem[_11602 + 96] = 1
                            mem[_11602 + 128] = 0
                            mem[_11602 + 160] = 10000
                            mem[_11602 + 192] = 10000
                            mem[_11602 + 224] = 10000
                            mem[_11602 + 256] = 0
                            mem[_11602 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11605 = mem[_8056]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11605:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11605) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11605 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11605 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11605:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11605) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8056 + 32
                                    while _8056 + _11605 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11605 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor154[stor153.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                    stor154[stor153.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    ownerOf[stor153.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if not ext_code.size(msg.sender):
                        _8258 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_8258] = _8056
                        mem[_8258 + 32] = 0
                        mem[_8258 + 64] = 0
                        mem[_8258 + 96] = 1
                        mem[_8258 + 128] = 0
                        mem[_8258 + 160] = 10000
                        mem[_8258 + 192] = 10000
                        mem[_8258 + 224] = 10000
                        mem[_8258 + 256] = 0
                        mem[_8258 + 288] = block.timestamp
                        mem[32] = 255
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _8093 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _11364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11364] == Mask(32, 224, mem[_11364])
                        if Mask(32, 224, mem[_11364]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _11610 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_11610] = _8056
                        mem[_11610 + 32] = 0
                        mem[_11610 + 64] = 0
                        mem[_11610 + 96] = 1
                        mem[_11610 + 128] = 0
                        mem[_11610 + 160] = 10000
                        mem[_11610 + 192] = 10000
                        mem[_11610 + 224] = 10000
                        mem[_11610 + 256] = 0
                        mem[_11610 + 288] = block.timestamp
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 255
                        _11613 = mem[_8056]
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11613:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor255[stor153.length + 1].field_0 = (2 * _11613) + 1
                                t = sha3(sha3(tokenByIndex.length + 1, 255))
                                s = _8056 + 32
                                while _8056 + _11613 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11613 + 31) >> 5)
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11613:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor255[stor153.length + 1].field_256 = 0
                                stor255[stor153.length + 1].field_512 = 0
                                uint8(stor255[stor153.length + 1].field_768) = 1
                                stor255[stor153.length + 1].field_1024 = 0
                                stor255[stor153.length + 1].field_1280 = 10000
                                stor255[stor153.length + 1].field_1536 = 10000
                                stor255[stor153.length + 1].field_1792 = 10000
                                stor255[stor153.length + 1].field_2048 = 0
                                stor255[stor153.length + 1].field_2304 = block.timestamp
                                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor255[stor153.length + 1].field_0 = (2 * _11613) + 1
                            t = sha3(sha3(tokenByIndex.length + 1, 255))
                            s = _8056 + 32
                            while _8056 + _11613 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11613 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            else:
                if block.timestamp < startTime:
                    revert with 0, 17
                if stor255[stor151[address(msg.sender)][idx]].field_512 >= sub_d964147c.length:
                    revert with 0, 50
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 and stor255[stor151[address(msg.sender)][idx]].field_1280 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0:
                    revert with 0, 17
                if sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 and sub_7e076932 > -1 / sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280:
                    revert with 0, 17
                if block.timestamp - startTime and sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6 > -1 / block.timestamp - startTime:
                    revert with 0, 17
                if 0 < (block.timestamp * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6) - (startTime * sub_d964147c[stor255[stor151[address(msg.sender)][idx]].field_512].field_0 * stor255[stor151[address(msg.sender)][idx]].field_1280 * sub_7e076932 / 24 * 3600 / 100 * 10^6):
                    revert with 0, 17
                mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
                stor255[stor151[address(msg.sender)][idx]].field_2304 = block.timestamp
                _8058 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8058] = 0
                mem[0] = msg.sender
                mem[32] = 0x51111423f5e835a1e334a686a7d9f998a65310f720d529827b76c12f396de482
                if not stor5111[msg.sender]:
                    revert with 0, 'Incorrect role!'
                require ext_code.size(settingsAddress)
                staticcall settingsAddress.0x3c8463a1 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8072 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8076 = mem[_8072]
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                mem[0] = msg.sender
                if 1 > !balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] + 1 > _8076:
                    revert with 0, 'Cant go over limit'
                if 1 > !tokenByIndex.length:
                    revert with 0, 17
                _8094 = mem[64]
                mem[64] = mem[64] + 32
                mem[_8094] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor153.length + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor154[stor153.length + 1] = tokenByIndex.length
                tokenByIndex.length++
                stor72A1[stor153.length] = tokenByIndex.length + 1
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8190 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8190] = _8058
                            mem[_8190 + 32] = 0
                            mem[_8190 + 64] = 0
                            mem[_8190 + 96] = 1
                            mem[_8190 + 128] = 0
                            mem[_8190 + 160] = 10000
                            mem[_8190 + 192] = 10000
                            mem[_8190 + 224] = 10000
                            mem[_8190 + 256] = 0
                            mem[_8190 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11366 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11366] == Mask(32, 224, mem[_11366])
                            if Mask(32, 224, mem[_11366]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11618 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11618] = _8058
                            mem[_11618 + 32] = 0
                            mem[_11618 + 64] = 0
                            mem[_11618 + 96] = 1
                            mem[_11618 + 128] = 0
                            mem[_11618 + 160] = 10000
                            mem[_11618 + 192] = 10000
                            mem[_11618 + 224] = 10000
                            mem[_11618 + 256] = 0
                            mem[_11618 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11621 = mem[_8058]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11621:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11621) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11621 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11621 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11621:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11621) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11621 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11621 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = tokenByIndex.length + 1
                        stor152[stor153.length + 1] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 103
                        ownerOf[stor153.length + 1] = msg.sender
                        emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                        if not ext_code.size(msg.sender):
                            _8234 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_8234] = _8058
                            mem[_8234 + 32] = 0
                            mem[_8234 + 64] = 0
                            mem[_8234 + 96] = 1
                            mem[_8234 + 128] = 0
                            mem[_8234 + 160] = 10000
                            mem[_8234 + 192] = 10000
                            mem[_8234 + 224] = 10000
                            mem[_8234 + 256] = 0
                            mem[_8234 + 288] = block.timestamp
                            mem[32] = 255
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = tokenByIndex.length + 1
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                            _11368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11368] == Mask(32, 224, mem[_11368])
                            if Mask(32, 224, mem[_11368]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            _11626 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_11626] = _8058
                            mem[_11626 + 32] = 0
                            mem[_11626 + 64] = 0
                            mem[_11626 + 96] = 1
                            mem[_11626 + 128] = 0
                            mem[_11626 + 160] = 10000
                            mem[_11626 + 192] = 10000
                            mem[_11626 + 224] = 10000
                            mem[_11626 + 256] = 0
                            mem[_11626 + 288] = block.timestamp
                            mem[0] = tokenByIndex.length + 1
                            mem[32] = 255
                            _11629 = mem[_8058]
                            if bool(stor255[stor153.length + 1].field_0):
                                if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11629:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11629) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11629 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11629 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(tokenByIndex.length + 1, 255)
                                if not _11629:
                                    stor255[stor153.length + 1].field_0 = 0
                                    s = sha3(sha3(tokenByIndex.length + 1, 255))
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor255[stor153.length + 1].field_0 = (2 * _11629) + 1
                                    t = sha3(sha3(tokenByIndex.length + 1, 255))
                                    s = _8058 + 32
                                    while _8058 + _11629 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11629 + 31) >> 5)
                                    while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor154[stor153.length + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor154[tokenByIndex.length + 1]] = tokenByIndex[tokenByIndex.length]
                    stor154[stor153[stor153.length]] = stor154[stor153.length + 1]
                    stor154[stor153.length + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = tokenByIndex.length + 1
                    mem[32] = 103
                    ownerOf[stor153.length + 1] = msg.sender
                    emit Transfer(0, msg.sender, tokenByIndex.length + 1);
                    if not ext_code.size(msg.sender):
                        _8265 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_8265] = _8058
                        mem[_8265 + 32] = 0
                        mem[_8265 + 64] = 0
                        mem[_8265 + 96] = 1
                        mem[_8265 + 128] = 0
                        mem[_8265 + 160] = 10000
                        mem[_8265 + 192] = 10000
                        mem[_8265 + 224] = 10000
                        mem[_8265 + 256] = 0
                        mem[_8265 + 288] = block.timestamp
                        mem[32] = 255
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            stor255[stor153.length + 1].field_0 = 0
                            s = sha3(sha3(tokenByIndex.length + 1, 255))
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + 1
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _8094 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + 1, 128, 0
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
                        _11370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11370] == Mask(32, 224, mem[_11370])
                        if Mask(32, 224, mem[_11370]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        _11634 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_11634] = _8058
                        mem[_11634 + 32] = 0
                        mem[_11634 + 64] = 0
                        mem[_11634 + 96] = 1
                        mem[_11634 + 128] = 0
                        mem[_11634 + 160] = 10000
                        mem[_11634 + 192] = 10000
                        mem[_11634 + 224] = 10000
                        mem[_11634 + 256] = 0
                        mem[_11634 + 288] = block.timestamp
                        mem[0] = tokenByIndex.length + 1
                        mem[32] = 255
                        _11637 = mem[_8058]
                        if bool(stor255[stor153.length + 1].field_0):
                            if bool(stor255[stor153.length + 1].field_0) == uint255(stor255[stor153.length + 1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11637:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor255[stor153.length + 1].field_0 = (2 * _11637) + 1
                                t = sha3(sha3(tokenByIndex.length + 1, 255))
                                s = _8058 + 32
                                while _8058 + _11637 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11637 + 31) >> 5)
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + ((uint255(stor255[stor153.length + 1].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor255[stor153.length + 1].field_0) == stor255[stor153.length + 1].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(tokenByIndex.length + 1, 255)
                            if not _11637:
                                stor255[stor153.length + 1].field_0 = 0
                                s = sha3(sha3(tokenByIndex.length + 1, 255))
                                while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor255[stor153.length + 1].field_256 = 0
                                stor255[stor153.length + 1].field_512 = 0
                                uint8(stor255[stor153.length + 1].field_768) = 1
                                stor255[stor153.length + 1].field_1024 = 0
                                stor255[stor153.length + 1].field_1280 = 10000
                                stor255[stor153.length + 1].field_1536 = 10000
                                stor255[stor153.length + 1].field_1792 = 10000
                                stor255[stor153.length + 1].field_2048 = 0
                                stor255[stor153.length + 1].field_2304 = block.timestamp
                                if sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) + 1
                                continue 
                            stor255[stor153.length + 1].field_0 = (2 * _11637) + 1
                            t = sha3(sha3(tokenByIndex.length + 1, 255))
                            s = _8058 + 32
                            while _8058 + _11637 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(tokenByIndex.length + 1, 255)) + (Mask(251, 0, _11637 + 31) >> 5)
                            while sha3(sha3(tokenByIndex.length + 1, 255)) + (stor255[stor153.length + 1].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            stor255[stor153.length + 1].field_256 = 0
            stor255[stor153.length + 1].field_512 = 0
            uint8(stor255[stor153.length + 1].field_768) = 1
            stor255[stor153.length + 1].field_1024 = 0
            stor255[stor153.length + 1].field_1280 = 10000
            stor255[stor153.length + 1].field_1536 = 10000
            stor255[stor153.length + 1].field_1792 = 10000
            stor255[stor153.length + 1].field_2048 = 0
            stor255[stor153.length + 1].field_2304 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
