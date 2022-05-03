contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
array of struct stor3;
mapping of uint32 ownerOf;
mapping of uint256 reflectionBalances;
mapping of address approved;
mapping of uint8 stor7;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor9;
array of uint256 tokenByIndex;
mapping of uint256 stor11;
mapping of struct stor12;
uint256 _tokenIdTracker;
uint256 sub_e00d023f;
array of uint256 stor15;
uint256 price;
uint256 max;
address stor18;
address stor19;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 reflectionBalance;
mapping of address minter;

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalDividend < reflectionBalance[arg1]:
        revert with 0, 17
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and totalDividend - reflectionBalance[arg1] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not eth.balance(this.address):
        revert with 0, 18
    return totalDividend - reflectionBalance[arg1], 
           (totalDividend * ext_call.return_data[0]) - (reflectionBalance[arg1] * ext_call.return_data[0]) / eth.balance(this.address)
}

function getReflectionBalances() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 5
    idx = 0
    s = 0
    t = 0
    while idx < reflectionBalances[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= reflectionBalances[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 22
        if totalDividend < reflectionBalance[stor8[address(msg.sender)][idx]]:
            revert with 0, 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor18)
        staticcall stor18.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_30] and totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]] > -1 / mem[_30]:
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if t > !(totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]]):
            revert with 0, 17
        if s > !((totalDividend * mem[_30]) - (reflectionBalance[stor8[address(msg.sender)][idx]] * mem[_30]) / eth.balance(this.address)):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((totalDividend * mem[_30]) - (reflectionBalance[stor8[address(msg.sender)][idx]] * mem[_30]) / eth.balance(this.address))
        t = t + totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]]
        continue 
    return t * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)], 
           s * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
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
    if arg2 >= reflectionBalances[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return address(ownerOf[arg1])
}

function max() {
    return max
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return reflectionBalances[address(arg1)]
}

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function price() {
    return price
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return reflectionBalance[arg1]
}

function sub_e00d023f(?) {
    return sub_e00d023f
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function currentRate() {
    if tokenByIndex.length:
        return (reflectionBalance / tokenByIndex.length)
    else:
        return 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function reflectToOwners() payable {
    if reflectionBalance > !msg.value:
        revert with 0, 17
    reflectionBalance += msg.value
    if not tokenByIndex.length:
        revert with 0, 18
    if totalDividend > !(msg.value / tokenByIndex.length):
        revert with 0, 17
    totalDividend += msg.value / tokenByIndex.length
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to change price' << 136
    price = arg1
}

function sub_dddcc322(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to change the flag' << 112
    sub_e00d023f = arg1
}

function setBonusToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65,
                    'to change the bonus token'
    stor18 = arg1
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
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not stor7[address(stor4[arg2])][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 50, 0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65, 'to change base URI' << 112
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
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function setTokenURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 51, 0xfe417661784c696f6e733a206d75737420686176652061646d696e20726f6c65, 'to change token URI' << 104
    if not address(ownerOf[arg1]):
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor12[arg1].field_0:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[arg1].field_0 == stor12[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor12[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor12[arg1].field_0 = 0
            idx = 0
            while stor12[arg1].field_1 + 31 / 32 > idx:
                stor12[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
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

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[stor2.length.field_1 + ceil32(stor2.length.field_1) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
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

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if address(ownerOf[arg1]) != msg.sender:
        if not address(ownerOf[arg1]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'AvaxLions: Only owner or approved can claim rewards'
    if totalDividend < reflectionBalance[arg1]:
        revert with 0, 17
    mem[100] = this.address
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and totalDividend - reflectionBalance[arg1] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not eth.balance(this.address):
        revert with 0, 18
    if not address(ownerOf[arg1]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    call address(ownerOf[arg1]) with:
       value totalDividend - reflectionBalance[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(ownerOf[arg1]):
        revert with 0, 'ERC721: owner query for nonexistent token'
    mem[ceil32(return_data.size) + 132] = address(ownerOf[arg1])
    mem[ceil32(return_data.size) + 164] = (totalDividend * ext_call.return_data[0]) - (reflectionBalance[arg1] * ext_call.return_data[0]) / eth.balance(this.address)
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, ownerOf[arg1])
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor18):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), (totalDividend * ext_call.return_data[0]) - (reflectionBalance[arg1] * ext_call.return_data[0]) / eth.balance(this.address), 0
    mem[ceil32(return_data.size) + 328] = 0
    call stor18 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), (totalDividend * ext_call.return_data[0]) - (reflectionBalance[arg1] * ext_call.return_data[0]) / eth.balance(this.address), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), (totalDividend * ext_call.return_data[0]) - (reflectionBalance[arg1] * ext_call.return_data[0]) / eth.balance(this.address), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    reflectionBalance[arg1] = totalDividend
}

function claimRewards() payable {
    mem[64] = 96
    require not msg.value
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 5
    idx = 0
    s = 0
    t = 0
    while idx < reflectionBalances[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= reflectionBalances[address(msg.sender)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 22
        if totalDividend < reflectionBalance[stor8[address(msg.sender)][idx]]:
            revert with 0, 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor18)
        staticcall stor18.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _112 = mem[_109]
        if mem[_109] and totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]] > -1 / mem[_109]:
            revert with 0, 17
        if not eth.balance(this.address):
            revert with 0, 18
        if t > !(totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]]):
            revert with 0, 17
        if s > !((totalDividend * mem[_109]) - (reflectionBalance[stor8[address(msg.sender)][idx]] * mem[_109]) / eth.balance(this.address)):
            revert with 0, 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 22
        reflectionBalance[stor8[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((totalDividend * _112) - (reflectionBalance[stor8[address(msg.sender)][idx]] * _112) / eth.balance(this.address))
        t = t + totalDividend - reflectionBalance[stor8[address(msg.sender)][idx]]
        continue 
    _88 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = s * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)]
    _89 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_88 + 100] = 32
    mem[_88 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor18):
        revert with 0, 'Address: call to non-contract'
    _104 = mem[_89]
    mem[_88 + 164 len ceil32(mem[_89])] = mem[_89 + 32 len ceil32(mem[_89])]
    if ceil32(_104) > _104:
        mem[_104 + _88 + 164] = 0
    call stor18 with:
         gas gas_remaining wei
        args mem[_88 + 168 len _104 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_88 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_88 + 196] == bool(mem[_88 + 196])
            if not mem[_88 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call msg.sender with:
       value t * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] * reflectionBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if sub_e00d023f != 1:
        revert with 0, 'AvaxLions: can't mint now'
    if price and arg1 > -1 / price:
        revert with 0, 17
    if price * arg1 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AvaxLions: must send correct price'
    if _tokenIdTracker > !arg1:
        revert with 0, 17
    if _tokenIdTracker + arg1 > max:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AvaxLions: not enough avax lions left to mint amount'
    idx = 0
    while idx < arg1:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if address(ownerOf[stor13]):
            revert with 0, 'ERC721: token already minted'
        if tokenByIndex.length > _tokenIdTracker:
            if not address(ownerOf[stor13]):
                revert with 0, 'ERC721: owner query for nonexistent token'
            if address(ownerOf[stor13]) == msg.sender:
                mem[0] = _tokenIdTracker
                mem[32] = 22
                if totalDividend < reflectionBalance[stor13]:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor18)
                staticcall stor18.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _756 = mem[_749]
                if mem[_749] and totalDividend - reflectionBalance[stor13] > -1 / mem[_749]:
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if not address(ownerOf[stor13]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                call address(ownerOf[stor13]) with:
                   value totalDividend - reflectionBalance[stor13] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = _tokenIdTracker
                mem[32] = 4
                if not address(ownerOf[stor13]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                _777 = mem[64]
                mem[mem[64] + 36] = address(ownerOf[stor13])
                mem[mem[64] + 68] = (totalDividend * _756) - (reflectionBalance[stor13] * _756) / eth.balance(this.address)
                _779 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_779 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_779 + 36 len 28]
                mem[64] = _777 + 164
                mem[_777 + 100] = 32
                mem[_777 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor18):
                    revert with 0, 'Address: call to non-contract'
                _794 = mem[_779]
                s = 0
                while s < _794:
                    mem[s + _777 + 164] = mem[s + _779 + 32]
                    s = s + 32
                    continue 
                if ceil32(_794) > _794:
                    mem[_794 + _777 + 164] = 0
                call stor18.mem[_777 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_777 + 168 len _794 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_777 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_777 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _777 + 232] = mem[idx + _777 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_777 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _777 + ceil32(return_data.size) + 165
                    mem[_777 + 164] = return_data.size
                    mem[_777 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_777 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_777 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _777 + ceil32(return_data.size) + 233] = mem[idx + _777 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_777 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_777 + 196] == bool(mem[_777 + 196])
                        if not mem[_777 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not address(ownerOf[stor13]):
                    revert with 0, 'ERC721: approved query for nonexistent token'
                if approved[stor13] != msg.sender:
                    revert with 0, 'AvaxLions: Only owner or approved can claim rewards'
                mem[0] = _tokenIdTracker
                mem[32] = 22
                if totalDividend < reflectionBalance[stor13]:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor18)
                staticcall stor18.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _765 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _767 = mem[_765]
                if mem[_765] and totalDividend - reflectionBalance[stor13] > -1 / mem[_765]:
                    revert with 0, 17
                if not eth.balance(this.address):
                    revert with 0, 18
                if not address(ownerOf[stor13]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                call address(ownerOf[stor13]) with:
                   value totalDividend - reflectionBalance[stor13] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = _tokenIdTracker
                mem[32] = 4
                if not address(ownerOf[stor13]):
                    revert with 0, 'ERC721: owner query for nonexistent token'
                _791 = mem[64]
                mem[mem[64] + 36] = address(ownerOf[stor13])
                mem[mem[64] + 68] = (totalDividend * _767) - (reflectionBalance[stor13] * _767) / eth.balance(this.address)
                _795 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_795 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_795 + 36 len 28]
                mem[64] = _791 + 164
                mem[_791 + 100] = 32
                mem[_791 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor18):
                    revert with 0, 'Address: call to non-contract'
                _810 = mem[_795]
                s = 0
                while s < _810:
                    mem[s + _791 + 164] = mem[s + _795 + 32]
                    s = s + 32
                    continue 
                if ceil32(_810) > _810:
                    mem[_810 + _791 + 164] = 0
                call stor18.mem[_791 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_791 + 168 len _810 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_791 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_791 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _791 + 232] = mem[idx + _791 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_791 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _791 + ceil32(return_data.size) + 165
                    mem[_791 + 164] = return_data.size
                    mem[_791 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_791 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_791 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _791 + ceil32(return_data.size) + 233] = mem[idx + _791 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_791 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_791 + 196] == bool(mem[_791 + 196])
                        if not mem[_791 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            reflectionBalance[stor13] = totalDividend
        stor11[stor13] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = _tokenIdTracker
        if msg.sender:
            if msg.sender:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor5[address(msg.sender)]] = _tokenIdTracker
                stor9[stor13] = reflectionBalances[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor11[stor13] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor11[stor13]] = tokenByIndex[tokenByIndex.length]
            stor11[stor10[stor10.length]] = stor11[stor13]
            stor11[stor13] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if reflectionBalances[address(msg.sender)] > -2:
            revert with 0, 17
        reflectionBalances[address(msg.sender)]++
        address(ownerOf[stor13]) = msg.sender
        emit Transfer(0, msg.sender, _tokenIdTracker);
        minter[stor13] = msg.sender
        mem[0] = _tokenIdTracker
        mem[32] = 22
        reflectionBalance[stor13] = totalDividend
        _tokenIdTracker++
        if not arg1:
            revert with 0, 18
        if msg.value / arg1 < msg.value / arg1 / 10:
            revert with 0, 17
        if reflectionBalance > !(msg.value / arg1 / 10):
            revert with 0, 17
        reflectionBalance += msg.value / arg1 / 10
        if not tokenByIndex.length:
            revert with 0, 18
        if totalDividend > !(msg.value / arg1 / 10 / tokenByIndex.length):
            revert with 0, 17
        totalDividend += msg.value / arg1 / 10 / tokenByIndex.length
        call stor19 with:
           value (msg.value / arg1) - (msg.value / arg1 / 10) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
