contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_1b722731(?) = 8

const sub_424fa66d(?) = 1

const sub_4bbd7a84(?) = 2

const sub_5dba06e4(?) = sha3(0x4e4f5f4f574e45445f4c494d4954)

const getStaminaMaxWait = 60000

const sub_72322bab(?) = 102

const sub_7d66a999(?) = 300

const sub_8f08d9e2(?) = 200

const sub_b3281684(?) = 101

const sub_f771a036(?) = 103

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = sha3(Mask(88, 168, 'MINTER_ROLE') >> 168)


mapping of uint8 stor51;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor103;
mapping of address approved;
mapping of uint8 stor105;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor108;
array of struct baseURI;
array of struct roleAdmin;
array of struct stor201;
array of struct stor202;
array of uint16 requiredXpForNextLevel;
mapping of uint256 lastTransferTimestamp;
address promosAddress;
uint256 stor461;
uint256 stor462;
uint256 sub_aa3c6cfc;
mapping of uint256 sub_3c69f91f;
mapping of uint256 sub_3a319b4b;
mapping of struct sub_783efb25;
address sub_9462fa19Address;
mapping of uint256 stor336492626609784167942478;
mapping of uint256 stor1588316470916819674341485992298836;
array of struct stor46472157311649131651317580928243384587355742660275723744700495089454914805032;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function sub_17b199a4(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_783efb25[arg1][arg2].field_0)
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_512)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function sub_3a319b4b(?) payable {
    require calldata.size - 4 >= 32
    return sub_3a319b4b[arg1]
}

function sub_3c69f91f(?) payable {
    require calldata.size - 4 >= 32
    return sub_3c69f91f[arg1]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return uint256(tokenByIndex[arg1].field_0)
}

function promos() payable {
    return promosAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor103[arg1] - 1].field_256)
}

function baseURI() payable {
    return uint256(baseURI[0 len baseURI.length].field_0)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function sub_783efb25(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_783efb25[arg1][arg2].field_0)
}

function getRequiredXpForNextLevel(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 256
    return uint16(requiredXpForNextLevel[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= uint256(roleAdmin[arg1].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(uint256(roleAdmin[arg1][1][address(arg2)].field_0))
}

function sub_9462fa19(?) payable {
    return sub_9462fa19Address
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastTransferTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lastTransferTimestamp[arg1]
}

function sub_aa3c6cfc(?) payable {
    return sub_aa3c6cfc
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_0)
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor105[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function migrateTo_b627f23() payable {
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    sub_aa3c6cfc = 4
}

function sub_d2ed7e06(?) payable {
    require calldata.size - 4 >= 32
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    sub_9462fa19Address = arg1
}

function migrateTo_ef994e2(address arg1) payable {
    require calldata.size - 4 >= 32
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    promosAddress = arg1
}

function migrateTo_951a020() payable {
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    stor51[0xe62e697400000000000000000000000000000000000000000000000000000000] = 1
}

function setCharacterLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    sub_aa3c6cfc = arg1
}

function sub_fbb8ef78(?) payable {
    require calldata.size - 4 >= 96
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    uint256(sub_783efb25[arg1][arg2].field_0) = arg3
}

function getStaminaPointsFromTimestamp(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > block.timestamp:
        return 0
    if block.timestamp - arg1 / 300 <= 200:
        return uint8(block.timestamp - arg1 / 300)
    return 200
}

function getXp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint16(stor201[arg1].field_0)
}

function getLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint8(stor201[arg1].field_16)
}

function getTrait(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint8(stor201[arg1].field_24)
}

function getCosmeticsSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor202.length
    return uint256(stor202[arg1].field_256)
}

function getStaminaTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    return uint64(stor201[arg1].field_32)
}

function setTrait(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    uint8(stor201[arg1].field_24) = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setStaminaTimestamp(uint256 arg1, uint64 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    uint64(stor201[arg1].field_32) = arg2
}

function sub_b285630b(?) payable {
    require calldata.size - 4 >= 8160
    mem[96 len 8160] = call.data[4 len 8160]
    mem[8256] = 0
    require uint256(roleAdmin[0][1][address(msg.sender)].field_0)
    s = 203
    idx = 96
    while 8256 > idx:
        uint256(stor[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 458
    while 459 > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
}

function getStaminaPoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if uint64(stor201[arg1].field_32) > block.timestamp:
        return 0
    if block.timestamp - uint64(stor201[arg1].field_32) / 300 <= 200:
        return uint8(block.timestamp - uint64(stor201[arg1].field_32) / 300)
    return 200
}

function isStaminaFull(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if uint64(stor201[arg1].field_32) > block.timestamp:
        return 0
    if block.timestamp - uint64(stor201[arg1].field_32) / 300 <= 200:
        return uint8(block.timestamp - uint64(stor201[arg1].field_32) / 300) >= 200
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        uint256(roleAdmin[arg1].field_0)++
        address(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_160) = 0
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = uint256(roleAdmin[arg1].field_0)
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_e6defc7e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 466)
        require idx < arg2.length
        mem[(32 * idx) + (32 * arg2.length) + 160] = uint256(sub_783efb25[arg1][mem[(32 * idx) + 128]].field_0)
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 160] = 32
    mem[(64 * arg2.length) + 192] = arg2.length
    mem[(64 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg2.length) + 160 len floor32(arg2.length)]
    return memory
      from (64 * arg2.length) + 160
       len (161 * arg2.length) + 64
}

function sub_9a550fd2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(arg1, 466)
        uint256(sub_783efb25[arg1][mem[(32 * idx) + 128]].field_0) = mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint256(roleAdmin[uint256(roleAdmin[arg1].field_512)][1][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if uint256(roleAdmin[arg1][1][address(arg2)].field_0):
        require uint256(roleAdmin[arg1].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        require uint256(roleAdmin[arg1][1][address(arg2)].field_0) - 1 < uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1][1][address(arg2)].field_0)].field_0) = uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)
        uint256(roleAdmin[arg1][1][uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0)].field_0) = uint256(roleAdmin[arg1][1][address(arg2)].field_0)
        require uint256(roleAdmin[arg1].field_0)
        uint256(roleAdmin[arg1][uint256(roleAdmin[arg1].field_0)].field_0) = 0
        uint256(roleAdmin[arg1].field_0)--
        uint256(roleAdmin[arg1][1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    if not uint256(roleAdmin[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0):
        revert with 0, 'NA'
    baseURI.length = (2 * arg1.length) + 1
    if arg1.length <= 0:
        idx = 0
        while baseURI.length + 31 / 32 > idx:
            uint256(baseURI[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        uint256(baseURI.field_0) = mem[128]
        s = 1
        idx = 160
        while arg1.length + 128 > idx:
            uint256(baseURI[s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while baseURI.length + 31 / 32 > idx:
            uint256(baseURI[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor103[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor103[arg2] - 1].field_256) != msg.sender:
        if not stor105[address(stor102[stor103[arg2] - 1].field_256)][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg2] - 1].field_256), arg1, arg2);
}

function getPowerAtLevel(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if (arg1 / 10) + 1 < arg1 / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if (1000 * arg1 / 10) + 1000 / 1000 != (arg1 / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((1000 * arg1 / 10) + 1000 % 16777216)
    if 10 * arg1 / arg1 != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * arg1) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * arg1) + 1000:
        return 0
    if (10 * arg1) + (1000 * arg1 / 10) + (10 * arg1 * arg1 / 10) + 1000 / (10 * arg1) + 1000 != (arg1 / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10 * arg1) + (1000 * arg1 / 10) + (10 * arg1 * arg1 / 10) + 1000 % 16777216)
}

function sub_93272d9f(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 101
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        mem[0] = sha3(address(arg1), 101)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])], mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + floor32(tokenOfOwnerByIndex[address(arg1)]) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)]) - floor32(tokenOfOwnerByIndex[address(arg1)])]), 
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    require arg1 < stor202.length
    if sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14 < sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46 < sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62 < sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42 < sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23 < sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23:
        revert with 0, 'SafeMath: addition overflow'
    if sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3 < sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3:
        revert with 0, 'SafeMath: addition overflow'
    return uint16(stor201[arg1].field_0), 
           uint8(stor201[arg1].field_0),
           uint8(stor201[arg1].field_0),
           uint64(stor201[arg1].field_0),
           sha3(sha3(uint256(stor202[arg1].field_256), 1)) % 14 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 2)) % 46 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 3)) % 62 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 4)) % 42 << 240,
           sha3(sha3(uint256(stor202[arg1].field_256), 5)) % 23 << 240,
           uint16(sha3(sha3(uint256(stor202[arg1].field_256), 6)) % 3)
}

function getPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg1].field_16):
        if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216)
    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
        return 0
    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216)
}

function gainXp(uint256 arg1, uint16 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    require arg1 < stor201.length
    mem[0] = 201
    if uint8(stor201[arg1].field_16) < 255:
        if arg2 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
            revert with 0, 'SafeMath: addition overflow'
        require uint8(stor201[arg1].field_16) < 256
        idx = arg2 + uint16(stor[sha3(mem[0]) + arg1])
        while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
            uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
            _23 = mem[64]
            mem[64] = mem[64] + 96
            mem[_23] = 41
            mem[_23 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if stor103[arg1]:
                require stor103[arg1] - 1 < tokenByIndex.length
                mem[0] = 102
                mem[mem[64]] = uint8(stor201[arg1].field_16)
                emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                if uint8(stor201[arg1].field_16) >= 255:
                    idx = 0
                    continue 
                idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                continue 
            _25 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _25 + 68] = mem[idx + _23 + 32]
                idx = idx + 32
                continue 
            mem[_25 + 100] = mem[_25 + 123 len 9]
            revert with memory
              from mem[64]
               len _25 + -mem[64] + 132
        uint16(stor201[arg1].field_0) = uint16(idx)
}

function getTotalPower(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg1 < stor201.length
    if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg1].field_16):
        if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return (((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0))
    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
        if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return uint256(sub_783efb25[arg1][2].field_0)
    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
        revert with 0, 'SafeMath: addition overflow'
    return (((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0))
}

function sub_99d2c2c4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        mem[0] = 201
        if uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) < 255:
            if cd[((32 * idx) + cd[36] + 36)] + uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0) < uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) < 256
            s = cd[((32 * idx) + cd[36] + 36)] + uint16(stor[sha3(mem[0]) + cd[((32 * idx) + cd[4] + 36)]])
            while s >= uint256(requiredXpForNextLevel[uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)]):
                uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) = uint8(uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) + 1)
                _38 = mem[64]
                mem[64] = mem[64] + 96
                mem[_38] = 41
                mem[_38 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)
                    emit LevelUp(uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16), address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
                    if uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) >= 255:
                        s = 0
                        continue 
                    s = s - uint256(requiredXpForNextLevel[uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)])
                    continue 
                _40 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _40 + 68] = mem[idx + _38 + 32]
                    idx = idx + 32
                    continue 
                mem[_40 + 100] = mem[_40 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _40 + -mem[64] + 132
            uint16(stor201[cd[((32 * idx) + cd[4] + 36)]].field_0) = uint16(s)
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor103[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != msg.sender:
        if not stor103[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor105[address(stor102[stor103[arg3] - 1].field_256)][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor103[arg3] - 1].field_256) != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    require not uint256(sub_783efb25[arg3][1].field_0)
    mem[484 len 0] = None
    require ext_code.size(promosAddress)
    call promosAddress.0xd8138acf with:
         gas gas_remaining wei
        args Array(len=2, data=mem[484 len 64]), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    'sERC721: owner query for nonexistent toke',
                    Mask(72, -256, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, 0) << 256
    require stor103[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require tokenOfOwnerByIndex[address(arg1)][1][arg3] - 1 < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]] = tokenOfOwnerByIndex[address(arg1)][1][arg3]
        require tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = 0
        tokenOfOwnerByIndex[address(arg1)]--
        tokenOfOwnerByIndex[address(arg1)][1][arg3] = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
    if stor103[arg3]:
        require stor103[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        uint256(tokenByIndex[tokenByIndex.length].field_0) = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor103[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_b46e6c17(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        if (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1 < uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16):
            if (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
            continue 
        if 10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000:
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
            continue 
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[0] = 2
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
        if ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + (((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) / 10)
        continue 
    return s
}

function sub_4946e9cb(?) payable {
    require calldata.size - 4 >= 160
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if not stor103[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg2] - 1 < tokenByIndex.length
    require arg1 == address(tokenByIndex[stor103[arg2] - 1].field_256)
    require not uint256(sub_783efb25[arg2][1].field_0)
    uint256(sub_783efb25[arg2][1].field_0) = arg5 or uint256(sub_783efb25[arg2][1].field_0)
    require arg2 < stor201.length
    if uint64(stor201[arg2].field_32) > block.timestamp:
        if 0 < arg3:
            revert with 0, 'Not enough stamina!'
        uint64(stor201[arg2].field_32) = uint64((300 * arg3) + uint64(stor201[arg2].field_32))
    else:
        if block.timestamp - uint64(stor201[arg2].field_32) / 300 > 200:
            if not arg4:
                if 200 < arg3:
                    revert with 0, 'Not enough stamina!'
            uint64(stor201[arg2].field_32) = uint64(block.timestamp + uint64(300 * arg3) - 60000)
        else:
            if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) <= 0:
                if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < arg3:
                    revert with 0, 'Not enough stamina!'
            else:
                if not arg4:
                    if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < arg3:
                        revert with 0, 'Not enough stamina!'
            if uint8(block.timestamp - uint64(stor201[arg2].field_32) / 300) < 200:
                uint64(stor201[arg2].field_32) = uint64((300 * arg3) + uint64(stor201[arg2].field_32))
            else:
                uint64(stor201[arg2].field_32) = uint64(block.timestamp + uint64(300 * arg3) - 60000)
    if arg2 >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require arg2 < stor201.length
    if (uint8(stor201[arg2].field_16) / 10) + 1 < uint8(stor201[arg2].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[arg2].field_16):
        if (1000 * uint8(stor201[arg2].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg2].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
        if ((1000 * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return 0, 
               uint32(stor201[arg2].field_32),
               ((1000 * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) % 16777216,
               uint8(stor201[arg2].field_24)
    if 10 * uint8(stor201[arg2].field_16) / uint8(stor201[arg2].field_16) != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if (10 * uint8(stor201[arg2].field_16)) + 1000 < 1000:
        revert with 0, 'SafeMath: addition overflow'
    if not (10 * uint8(stor201[arg2].field_16)) + 1000:
        if uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        return 0, uint32(stor201[arg2].field_32), uint32(sub_783efb25[arg2][2].field_0)
    if (10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 / (10 * uint8(stor201[arg2].field_16)) + 1000 != (uint8(stor201[arg2].field_16) / 10) + 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if ((10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) < uint256(sub_783efb25[arg2][2].field_0):
        revert with 0, 'SafeMath: addition overflow'
    return 0, 
           uint32(stor201[arg2].field_32),
           ((10 * uint8(stor201[arg2].field_16)) + (1000 * uint8(stor201[arg2].field_16) / 10) + (10 * uint8(stor201[arg2].field_16) * uint8(stor201[arg2].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg2][2].field_0) % 16777216,
           uint8(stor201[arg2].field_24)
}

function processRaidParticipation(uint256 arg1, bool arg2, uint16 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    sub_3c69f91f[arg1]++
    if not arg2:
        mem[32] = sha3(arg1, 466)
        require not uint256(sub_783efb25[arg1][1].field_0)
        require arg1 < stor201.length
        mem[0] = 201
        if uint8(stor201[arg1].field_16) < 255:
            if arg3 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[arg1].field_16) < 256
            idx = arg3 + uint16(stor[sha3(mem[0]) + arg1])
            while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
                uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
                _100 = mem[64]
                mem[64] = mem[64] + 96
                mem[_100] = 41
                mem[_100 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[arg1]:
                    require stor103[arg1] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[arg1].field_16)
                    emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                    if uint8(stor201[arg1].field_16) >= 255:
                        idx = 0
                        continue 
                    idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                    continue 
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _110 + 68] = mem[idx + _100 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 100] = mem[_110 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 132
            uint16(stor201[arg1].field_0) = uint16(idx)
    else:
        sub_3a319b4b[arg1]++
        mem[32] = sha3(arg1, 466)
        require not uint256(sub_783efb25[arg1][1].field_0)
        require arg1 < stor201.length
        mem[0] = 201
        if uint8(stor201[arg1].field_16) < 255:
            if arg3 + uint16(stor201[arg1].field_0) < uint16(stor201[arg1].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require uint8(stor201[arg1].field_16) < 256
            idx = arg3 + uint16(stor[sha3(mem[0]) + arg1])
            while idx >= uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)]):
                uint8(stor201[arg1].field_16) = uint8(uint8(stor201[arg1].field_16) + 1)
                _99 = mem[64]
                mem[64] = mem[64] + 96
                mem[_99] = 41
                mem[_99 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if stor103[arg1]:
                    require stor103[arg1] - 1 < tokenByIndex.length
                    mem[0] = 102
                    mem[mem[64]] = uint8(stor201[arg1].field_16)
                    emit LevelUp(uint8(stor201[arg1].field_16), address(tokenByIndex[stor103[arg1] - 1].field_256), arg1);
                    if uint8(stor201[arg1].field_16) >= 255:
                        idx = 0
                        continue 
                    idx = idx - uint256(requiredXpForNextLevel[uint8(stor201[arg1].field_16)])
                    continue 
                _107 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _107 + 68] = mem[idx + _99 + 32]
                    idx = idx + 32
                    continue 
                mem[_107 + 100] = mem[_107 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _107 + -mem[64] + 132
            uint16(stor201[arg1].field_0) = uint16(idx)
    if uint256(sub_783efb25[arg1][102].field_0) == 8:
        if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'NA'
        uint256(sub_783efb25[arg1][101].field_0)++
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if stor461 != block.number:
        stor462 = stor201.length
    stor461 = block.number
    if sha3(arg2) % 4 < sha3(arg2) % 4:
        revert with 0, 'SafeMath: addition overflow'
    if 60000 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    stor201.length++
    stor66BE[stor201.length].field_0 % 16777216 = 0
    stor66BE[stor201.length].field_24 % 4 = sha3(arg2) % 4
    stor66BE[stor201.length].field_26 % 64 = 0
    uint64(stor66BE[stor201.length].field_32) = uint64(block.timestamp - 60000)
    stor66BE[stor201.length].field_256 % 1 = 0
    stor66BE[stor201.length].field_256 % 1 = 0
    stor202.length++
    uint8(stor202[stor202.length].field_0) = 0
    stor202[stor202.length].field_256 % 1 = 0
    uint256(stor202[stor202.length].field_256) = sha3(arg2, 1)
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if 57005 == arg1:
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor201.length]:
            revert with 0, 'ERC721: token already minted'
        require not uint256(sub_783efb25[stor201.length][1].field_0)
        mem[644 len 0] = None
        require ext_code.size(promosAddress)
        call promosAddress.0xd8138acf with:
             gas gas_remaining wei
            args Array(len=2, data=mem[644 len 64]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
            tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
        if stor103[stor201.length]:
            require stor103[stor201.length] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
            Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
            address(tokenByIndex[tokenByIndex.length].field_256) = arg1
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor201.length] = tokenByIndex.length
        emit Transfer(0, arg1, stor201.length);
        emit NewCharacter(stor201.length, arg1);
    else:
        if stor151[('name', 'stor4E4F', 1588316470916819674341485992298836)][1][address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor201.length]:
                revert with 0, 'ERC721: token already minted'
            require not uint256(sub_783efb25[stor201.length][1].field_0)
            mem[644 len 0] = None
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args Array(len=2, data=mem[644 len 64]), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
            if stor103[stor201.length]:
                require stor103[stor201.length] - 1 < tokenByIndex.length
                address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor103[stor201.length] = tokenByIndex.length
            emit Transfer(0, arg1, stor201.length);
            emit NewCharacter(stor201.length, arg1);
        else:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[558 len 22]
            if tokenOfOwnerByIndex[address(arg1)] < sub_aa3c6cfc:
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                mem[644 len 0] = None
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args Array(len=2, data=mem[644 len 64]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                    tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, arg1, stor201.length);
                emit NewCharacter(stor201.length, arg1);
            else:
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.0xc39fc42c with:
                     gas gas_remaining wei
                    args address(arg1), stor201.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_9462fa19Address:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                mem[644 len 0] = None
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args Array(len=2, data=mem[644 len 64]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[stor467][1][stor201.length]:
                    tokenOfOwnerByIndex[stor467]++
                    tokenOfOwnerByIndex[stor467][tokenOfOwnerByIndex[stor467]] = stor201.length
                    tokenOfOwnerByIndex[stor467][1][stor201.length] = tokenOfOwnerByIndex[stor467]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[stor201.length] - 1].field_256) = sub_9462fa19Address
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    uint256(tokenByIndex[tokenByIndex.length].field_256) = sub_9462fa19Address
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, sub_9462fa19Address, stor201.length);
                emit NewCharacter(stor201.length, sub_9462fa19Address);
}

function sub_a4646669(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if not tokenOfOwnerByIndex[address(arg1)]:
        idx = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            mem[32] = 101
            if idx >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
            mem[0] = sha3(address(arg1), 101)
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 466)
            if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = s
        if not s:
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
        else:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
            var30001 = floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])
    else:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
        idx = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            mem[32] = 101
            if idx >= tokenOfOwnerByIndex[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
            mem[0] = sha3(address(arg1), 101)
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < tokenOfOwnerByIndex[address(arg1)]:
            require idx < tokenOfOwnerByIndex[address(arg1)]
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 466)
            if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = s
        if not s:
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
        else:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
            idx = 0
            t = s
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = 1
                mem[32] = sha3(mem[(32 * idx) + 128], 466)
                if uint256(sub_783efb25[mem[(32 * idx) + 128]][1].field_0) != 0:
                    idx = idx + 1
                    t = t
                    continue 
                require idx < tokenOfOwnerByIndex[address(arg1)]
                require t - 1 < mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
                mem[(32 * t - 1) + (32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[(32 * idx) + 128]
                idx = idx + 1
                t = t - 1
                continue 
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 160] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 224 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])] = mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])]
            var31001 = floor32(mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128])
    return 32, mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + (32 * s) + 192 len (32 * mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128]) + 32], 
}

function sub_a058957a(?) payable {
    require calldata.size - 4 >= 256
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not uint256(roleAdmin['MINTER_ROLE'][1][address(msg.sender)].field_0):
            revert with 0, 'no access'
    if arg6:
        require arg6 < stor201.length
        uint16(stor201[arg6].field_0) = arg2
        uint8(stor201[arg6].field_16) = arg3
        uint8(stor201[arg6].field_24) = arg4
        uint64(stor201[arg6].field_32) = uint64(block.timestamp)
        require arg6 < stor202.length
        uint256(stor202[arg6].field_256) = arg5
        sub_783efb25[arg6][2].field_0 % 16777216 = arg7 % 16777216
        Mask(232, 0, sub_783efb25[arg6][2].field_24) = 0
        uint16(sub_783efb25[arg6][103].field_0) = arg8
        Mask(240, 0, sub_783efb25[arg6][103].field_16) = 0
        return arg6
    if stor461 != block.number:
        stor462 = stor201.length
    stor461 = block.number
    stor201.length++
    uint16(stor66BE[stor201.length].field_0) = arg2
    uint8(stor66BE[stor201.length].field_16) = arg3
    uint8(stor66BE[stor201.length].field_24) = arg4
    uint64(stor66BE[stor201.length].field_32) = uint64(block.timestamp)
    stor202.length++
    uint8(stor202[stor202.length].field_0) = 0
    stor202[stor202.length].field_256 % 1 = 0
    uint256(stor202[stor202.length].field_256) = sha3(arg5, 1)
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if 57005 == arg1:
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if stor103[stor201.length]:
            revert with 0, 'ERC721: token already minted'
        require not uint256(sub_783efb25[stor201.length][1].field_0)
        mem[580 len 0] = None
        require ext_code.size(promosAddress)
        call promosAddress.0xd8138acf with:
             gas gas_remaining wei
            args Array(len=2, data=mem[580 len 64]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
            tokenOfOwnerByIndex[address(arg1)]++
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
            tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
        if stor103[stor201.length]:
            require stor103[stor201.length] - 1 < tokenByIndex.length
            address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
            Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
        else:
            tokenByIndex.length++
            uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
            address(tokenByIndex[tokenByIndex.length].field_256) = arg1
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[stor201.length] = tokenByIndex.length
        emit Transfer(0, arg1, stor201.length);
        emit NewCharacter(stor201.length, arg1);
    else:
        if stor151[('name', 'stor4E4F', 1588316470916819674341485992298836)][1][address(arg1)]:
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor201.length]:
                revert with 0, 'ERC721: token already minted'
            require not uint256(sub_783efb25[stor201.length][1].field_0)
            mem[580 len 0] = None
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args Array(len=2, data=mem[580 len 64]), 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
            if stor103[stor201.length]:
                require stor103[stor201.length] - 1 < tokenByIndex.length
                address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
            else:
                tokenByIndex.length++
                uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor103[stor201.length] = tokenByIndex.length
            emit Transfer(0, arg1, stor201.length);
            emit NewCharacter(stor201.length, arg1);
        else:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[494 len 22]
            if tokenOfOwnerByIndex[address(arg1)] < sub_aa3c6cfc:
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                mem[580 len 0] = None
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args Array(len=2, data=mem[580 len 64]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[address(arg1)][1][stor201.length]:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201.length
                    tokenOfOwnerByIndex[address(arg1)][1][stor201.length] = tokenOfOwnerByIndex[address(arg1)]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor103[stor201.length] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor201.length] - 1].field_416) = 0
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, arg1, stor201.length);
                emit NewCharacter(stor201.length, arg1);
            else:
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.0xc39fc42c with:
                     gas gas_remaining wei
                    args address(arg1), stor201.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not sub_9462fa19Address:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201.length]:
                    revert with 0, 'ERC721: token already minted'
                require not uint256(sub_783efb25[stor201.length][1].field_0)
                mem[580 len 0] = None
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args Array(len=2, data=mem[580 len 64]), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not tokenOfOwnerByIndex[stor467][1][stor201.length]:
                    tokenOfOwnerByIndex[stor467]++
                    tokenOfOwnerByIndex[stor467][tokenOfOwnerByIndex[stor467]] = stor201.length
                    tokenOfOwnerByIndex[stor467][1][stor201.length] = tokenOfOwnerByIndex[stor467]
                if stor103[stor201.length]:
                    require stor103[stor201.length] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[stor201.length] - 1].field_256) = sub_9462fa19Address
                else:
                    tokenByIndex.length++
                    uint256(tokenByIndex[tokenByIndex.length].field_0) = stor201.length
                    uint256(tokenByIndex[tokenByIndex.length].field_256) = sub_9462fa19Address
                    stor103[stor201.length] = tokenByIndex.length
                emit Transfer(0, sub_9462fa19Address, stor201.length);
                emit NewCharacter(stor201.length, sub_9462fa19Address);
    sub_783efb25[stor201.length][2].field_0 % 16777216 = arg7 % 16777216
    Mask(232, 0, sub_783efb25[stor201.length][2].field_24) = 0
    uint16(sub_783efb25[stor201.length][103].field_0) = arg8
    Mask(240, 0, sub_783efb25[stor201.length][103].field_16) = 0
    return stor201.length
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor103[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 108
    mem[96] = stor108[arg1].length
    mem[128] = uint256(stor108[arg1].field_0)
    idx = 128
    s = 0
    while stor108[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor108[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor108[arg1].length) + 128] = baseURI.length
    mem[0] = 109
    mem[ceil32(stor108[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor108[arg1].length) + 160
    s = 0
    while ceil32(stor108[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = uint256(baseURI[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor108[arg1].length, data=mem[128 len stor108[arg1].length])
    if stor108[arg1].length:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor108[arg1].length)] = mem[128 len floor32(stor108[arg1].length)]
        var33001 = floor32(stor108[arg1].length) + 128
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 224 len stor108[arg1].length % 32] = mem[floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 160 len stor108[arg1].length % 32]
        mem[64] = stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])]
        var38001 = ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        var34001 = ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[64] = ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] = s
    if s:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(s)] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return Array(len=mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32]), 
}

function sub_6129ca32(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    while idx < ('cd', 4).length:
        _282 = mem[64]
        mem[64] = mem[64] + 96
        mem[_282] = 41
        mem[_282 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
            _284 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _284 + 68] = mem[idx + _282 + 32]
                idx = idx + 32
                continue 
            mem[_284 + 100] = mem[_284 + 123 len 9]
            revert with memory
              from mem[64]
               len _284 + -mem[64] + 132
        require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
        mem[0] = 102
        require idx < ('cd', 4).length
        if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
            _294 = mem[64]
            mem[64] = mem[64] + 96
            mem[_294] = 41
            mem[_294 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _300 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _300 + 68] = mem[idx + _294 + 32]
                    idx = idx + 32
                    continue 
                mem[_300 + 100] = mem[_300 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _300 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 1
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            _311 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_311]
            mem[_311 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
            require 1 < mem[_311]
            mem[_311 + 64] = 0
            mem[_311 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
            mem[_311 + 132] = 1
            mem[_311 + 100] = 64
            mem[_311 + 164] = mem[_311]
            s = 0
            while s < 32 * mem[_311]:
                mem[s + _311 + 196] = mem[s + _311 + 32]
                s = s + 32
                continue 
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args 64, 1, mem[_311 + 164 len (32 * mem[_311]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[64] = _311 + 192
            mem[_311 + 96] = 41
            mem[_311 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                mem[_311 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_311 + 196] = 32
                idx = 0
                while idx < 41:
                    mem[idx + _311 + 260] = mem[idx + _311 + 128]
                    idx = idx + 32
                    continue 
                mem[_311 + 292] = mem[_311 + 315 len 9]
                revert with 0, 32, 41, mem[_311 + 260 len 64]
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
        else:
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_9462fa19Address)
            call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            _310 = mem[64]
            mem[64] = mem[64] + 96
            mem[_310] = 41
            mem[_310 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _318 + 68] = mem[idx + _310 + 32]
                    idx = idx + 32
                    continue 
                mem[_318 + 100] = mem[_318 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _318 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 1
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            _331 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_331]
            mem[_331 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
            require 1 < mem[_331]
            mem[_331 + 64] = 0
            mem[_331 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
            mem[_331 + 132] = 1
            mem[_331 + 100] = 64
            mem[_331 + 164] = mem[_331]
            s = 0
            while s < 32 * mem[_331]:
                mem[s + _331 + 196] = mem[s + _331 + 32]
                s = s + 32
                continue 
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args 64, 1, mem[_331 + 164 len (32 * mem[_331]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[64] = _331 + 192
            mem[_331 + 96] = 41
            mem[_331 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                mem[_331 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_331 + 196] = 32
                idx = 0
                while idx < 41:
                    mem[idx + _331 + 260] = mem[idx + _331 + 128]
                    idx = idx + 32
                    continue 
                mem[_331 + 292] = mem[_331 + 315 len 9]
                revert with 0, 32, 41, mem[_331 + 260 len 64]
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
        idx = idx + 1
        continue 
}

function sub_e1b3b2d6(?) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    if not arg2:
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require arg1 < stor201.length
        if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[arg1].field_16):
            if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < stor201.length
            if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[arg1].field_16):
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                    if 0 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
        if uint256(sub_783efb25[arg1][2].field_0) < 0:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if 10 * arg2 / arg2 != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 >= stor462:
            if stor461 >= block.number:
                revert with 0, 'Too fresh for lookup'
        require arg1 < stor201.length
        if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[arg1].field_16):
            if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if 10 * arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require arg1 < stor201.length
            if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[arg1].field_16):
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                    if 0 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                if uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                if (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0) < uint256(sub_783efb25[arg1][2].field_0):
                    revert with 0, 'SafeMath: addition overflow'
                if 10 * arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require arg1 < stor201.length
                if (uint8(stor201[arg1].field_16) / 10) + 1 < uint8(stor201[arg1].field_16) / 10:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor201[arg1].field_16):
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 / 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 4 * (1000 * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if 10 * uint8(stor201[arg1].field_16) / uint8(stor201[arg1].field_16) != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (10 * uint8(stor201[arg1].field_16)) + 1000 < 1000:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (10 * uint8(stor201[arg1].field_16)) + 1000:
                        if 0 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
                    else:
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 / (10 * uint8(stor201[arg1].field_16)) + 1000 != (uint8(stor201[arg1].field_16) / 10) + 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 4 * (10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216 < (10 * arg2) + ((10 * uint8(stor201[arg1].field_16)) + (1000 * uint8(stor201[arg1].field_16) / 10) + (10 * uint8(stor201[arg1].field_16) * uint8(stor201[arg1].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[arg1][2].field_0):
                            revert with 0, 'Power limit'
        if uint256(sub_783efb25[arg1][2].field_0) + (10 * arg2) < 10 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        uint256(sub_783efb25[arg1][2].field_0) += 10 * arg2
}

function sub_bef6ec26(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'NA'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] < stor201.length
        if (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1 < uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16):
            if (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < ('cd', 4).length
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require idx < ('cd', 4).length
            _1207 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1207] = 41
            mem[_1207 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1223 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1223 + 68] = mem[idx + _1207 + 32]
                    idx = idx + 32
                    continue 
                mem[_1223 + 100] = mem[_1223 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1223 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 102
            require idx < ('cd', 4).length
            if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
                _1270 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1270] = 41
                mem[_1270 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1293 + 68] = mem[idx + _1270 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1293 + 100] = mem[_1293 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1293 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                mem[0] = 1
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                _1343 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1343]
                mem[_1343 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
                require 1 < mem[_1343]
                mem[_1343 + 64] = 0
                mem[_1343 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
                mem[_1343 + 132] = 1
                mem[_1343 + 100] = 64
                mem[_1343 + 164] = mem[_1343]
                t = 0
                while t < 32 * mem[_1343]:
                    mem[t + _1343 + 196] = mem[t + _1343 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args 64, 1, mem[_1343 + 164 len (32 * mem[_1343]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[64] = _1343 + 192
                mem[_1343 + 96] = 41
                mem[_1343 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[_1343 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1343 + 196] = 32
                    idx = 0
                    while idx < 41:
                        mem[idx + _1343 + 260] = mem[idx + _1343 + 128]
                        idx = idx + 32
                        continue 
                    mem[_1343 + 292] = mem[_1343 + 315 len 9]
                    revert with 0, 32, 41, mem[_1343 + 260 len 64]
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
            else:
                require ext_code.size(sub_9462fa19Address)
                staticcall sub_9462fa19Address.0xb8cae950 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < ('cd', 4).length
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 4).length
                _1331 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1331] = 41
                mem[_1331 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1368 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1368 + 68] = mem[idx + _1331 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1368 + 100] = mem[_1368 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1368 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                mem[0] = 1
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                _1438 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1438]
                mem[_1438 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
                require 1 < mem[_1438]
                mem[_1438 + 64] = 0
                mem[_1438 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
                mem[_1438 + 132] = 1
                mem[_1438 + 100] = 64
                mem[_1438 + 164] = mem[_1438]
                t = 0
                while t < 32 * mem[_1438]:
                    mem[t + _1438 + 196] = mem[t + _1438 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args 64, 1, mem[_1438 + 164 len (32 * mem[_1438]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[64] = _1438 + 192
                mem[_1438 + 96] = 41
                mem[_1438 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[_1438 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1438 + 196] = 32
                    idx = 0
                    while idx < 41:
                        mem[idx + _1438 + 260] = mem[idx + _1438 + 128]
                        idx = idx + 32
                        continue 
                    mem[_1438 + 292] = mem[_1438 + 315 len 9]
                    revert with 0, 32, 41, mem[_1438 + 260 len 64]
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
            idx = idx + 1
            s = s + ((1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
            continue 
        if 10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000:
            require idx < ('cd', 4).length
            mem[0] = 2
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            if uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require idx < ('cd', 4).length
            _1206 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1206] = 41
            mem[_1206 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1220 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1220 + 68] = mem[idx + _1206 + 32]
                    idx = idx + 32
                    continue 
                mem[_1220 + 100] = mem[_1220 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1220 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 102
            require idx < ('cd', 4).length
            if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
                _1268 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1268] = 41
                mem[_1268 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1290 + 68] = mem[idx + _1268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1290 + 100] = mem[_1290 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1290 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                mem[0] = 1
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                _1341 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1341]
                mem[_1341 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
                require 1 < mem[_1341]
                mem[_1341 + 64] = 0
                mem[_1341 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
                mem[_1341 + 132] = 1
                mem[_1341 + 100] = 64
                mem[_1341 + 164] = mem[_1341]
                t = 0
                while t < 32 * mem[_1341]:
                    mem[t + _1341 + 196] = mem[t + _1341 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args 64, 1, mem[_1341 + 164 len (32 * mem[_1341]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[64] = _1341 + 192
                mem[_1341 + 96] = 41
                mem[_1341 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[_1341 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1341 + 196] = 32
                    idx = 0
                    while idx < 41:
                        mem[idx + _1341 + 260] = mem[idx + _1341 + 128]
                        idx = idx + 32
                        continue 
                    mem[_1341 + 292] = mem[_1341 + 315 len 9]
                    revert with 0, 32, 41, mem[_1341 + 260 len 64]
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
            else:
                require ext_code.size(sub_9462fa19Address)
                staticcall sub_9462fa19Address.0xb8cae950 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < ('cd', 4).length
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(sub_9462fa19Address)
                call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 4).length
                _1328 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1328] = 41
                mem[_1328 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[32] = 103
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    _1362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[idx + _1362 + 68] = mem[idx + _1328 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1362 + 100] = mem[_1362 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _1362 + -mem[64] + 132
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                mem[0] = 1
                mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
                require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
                _1435 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_1435]
                mem[_1435 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
                require 1 < mem[_1435]
                mem[_1435 + 64] = 0
                mem[_1435 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
                mem[_1435 + 132] = 1
                mem[_1435 + 100] = 64
                mem[_1435 + 164] = mem[_1435]
                t = 0
                while t < 32 * mem[_1435]:
                    mem[t + _1435 + 196] = mem[t + _1435 + 32]
                    t = t + 32
                    continue 
                require ext_code.size(promosAddress)
                call promosAddress.0xd8138acf with:
                     gas gas_remaining wei
                    args 64, 1, mem[_1435 + 164 len (32 * mem[_1435]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                approved[cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[64] = _1435 + 192
                mem[_1435 + 96] = 41
                mem[_1435 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    mem[_1435 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1435 + 196] = 32
                    idx = 0
                    while idx < 41:
                        mem[idx + _1435 + 260] = mem[idx + _1435 + 128]
                        idx = idx + 32
                        continue 
                    mem[_1435 + 292] = mem[_1435 + 315 len 9]
                    revert with 0, 32, 41, mem[_1435 + 260 len 64]
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                    uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                    if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                        t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                        while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                    require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                    tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                    require tokenByIndex.length - 1 < tokenByIndex.length
                    require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                    uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                    stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                    require tokenByIndex.length
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                    uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                    tokenByIndex.length--
                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 103
                    stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
                emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
                require idx < ('cd', 4).length
                emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
            idx = idx + 1
            s = s + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
            continue 
        if (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + 1000 != (uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < ('cd', 4).length
        mem[0] = 2
        mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
        if ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0) < uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        require idx < ('cd', 4).length
        _1214 = mem[64]
        mem[64] = mem[64] + 96
        mem[_1214] = 41
        mem[_1214 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
            _1230 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _1230 + 68] = mem[idx + _1214 + 32]
                idx = idx + 32
                continue 
            mem[_1230 + 100] = mem[_1230 + 123 len 9]
            revert with memory
              from mem[64]
               len _1230 + -mem[64] + 132
        require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
        mem[0] = 102
        require idx < ('cd', 4).length
        if sub_9462fa19Address != address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256):
            _1272 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1272] = 41
            mem[_1272 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1302 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1302 + 68] = mem[idx + _1272 + 32]
                    idx = idx + 32
                    continue 
                mem[_1302 + 100] = mem[_1302 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1302 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 1
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            _1347 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1347]
            mem[_1347 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
            require 1 < mem[_1347]
            mem[_1347 + 64] = 0
            mem[_1347 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
            mem[_1347 + 132] = 1
            mem[_1347 + 100] = 64
            mem[_1347 + 164] = mem[_1347]
            t = 0
            while t < 32 * mem[_1347]:
                mem[t + _1347 + 196] = mem[t + _1347 + 32]
                t = t + 32
                continue 
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args 64, 1, mem[_1347 + 164 len (32 * mem[_1347]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[64] = _1347 + 192
            mem[_1347 + 96] = 41
            mem[_1347 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                mem[_1347 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1347 + 196] = 32
                idx = 0
                while idx < 41:
                    mem[idx + _1347 + 260] = mem[idx + _1347 + 128]
                    idx = idx + 32
                    continue 
                mem[_1347 + 292] = mem[_1347 + 315 len 9]
                revert with 0, 32, 41, mem[_1347 + 260 len 64]
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), cd[((32 * idx) + cd[4] + 36)]);
        else:
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < ('cd', 4).length
            mem[mem[64] + 4] = address(ext_call.return_data[0])
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_9462fa19Address)
            call sub_9462fa19Address.updateOnBurn(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < ('cd', 4).length
            _1340 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1340] = 41
            mem[_1340 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 103
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                _1380 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[idx + _1380 + 68] = mem[idx + _1340 + 32]
                    idx = idx + 32
                    continue 
                mem[_1380 + 100] = mem[_1380 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _1380 + -mem[64] + 132
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            mem[0] = 1
            mem[32] = sha3(cd[((32 * idx) + cd[4] + 36)], 466)
            require not uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][1].field_0)
            _1443 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require 0 < mem[_1443]
            mem[_1443 + 32] = address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)
            require 1 < mem[_1443]
            mem[_1443 + 64] = 0
            mem[_1443 + 96] = 0xd8138acf00000000000000000000000000000000000000000000000000000000
            mem[_1443 + 132] = 1
            mem[_1443 + 100] = 64
            mem[_1443 + 164] = mem[_1443]
            t = 0
            while t < 32 * mem[_1443]:
                mem[t + _1443 + 196] = mem[t + _1443 + 32]
                t = t + 32
                continue 
            require ext_code.size(promosAddress)
            call promosAddress.0xd8138acf with:
                 gas gas_remaining wei
                args 64, 1, mem[_1443 + 164 len (32 * mem[_1443]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            approved[cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[64] = _1443 + 192
            mem[_1443 + 96] = 41
            mem[_1443 + 128 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
                mem[_1443 + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1443 + 196] = 32
                idx = 0
                while idx < 41:
                    mem[idx + _1443 + 260] = mem[idx + _1443 + 128]
                    idx = idx + 32
                    continue 
                mem[_1443 + 292] = mem[_1443 + 315 len 9]
                revert with 0, 32, 41, mem[_1443 + 260 len 64]
            require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
            emit Approval(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            if Mask(255, 1, uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) and (256 * not bool(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0)) - 1):
                uint256(stor108[cd[((32 * idx) + cd[4] + 36)]].field_0) = 0
                if 31 < stor108[cd[((32 * idx) + cd[4] + 36)]].length:
                    t = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108))
                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 108)) + (stor108[cd[((32 * idx) + cd[4] + 36)]].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
            if tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]:
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]]
                require tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]] = 0
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)]--
                tokenOfOwnerByIndex[address(stor102[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256)][1][cd[((32 * idx) + cd[4] + 36)]] = 0
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 103
            if stor103[cd[((32 * idx) + cd[4] + 36)]]:
                require tokenByIndex.length - 1 < tokenByIndex.length
                require stor103[cd[((32 * idx) + cd[4] + 36)]] - 1 < tokenByIndex.length
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_0) = uint256(tokenByIndex[tokenByIndex.length - 1].field_0)
                uint256(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256) = uint256(tokenByIndex[tokenByIndex.length - 1].field_256)
                stor103[uint256(stor102[stor102.length - 1].field_0)] = stor103[cd[((32 * idx) + cd[4] + 36)]]
                require tokenByIndex.length
                uint256(tokenByIndex[tokenByIndex.length - 1].field_0) = 0
                uint256(tokenByIndex[tokenByIndex.length - 1].field_256) = 0
                tokenByIndex.length--
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 103
                stor103[cd[((32 * idx) + cd[4] + 36)]] = 0
            emit Transfer(address(tokenByIndex[stor103[cd[((32 * idx) + cd[4] + 36)]] - 1].field_256), 0, cd[((32 * idx) + cd[4] + 36)]);
            require idx < ('cd', 4).length
            emit Burned(address(ext_call.return_data[0]), cd[((32 * idx) + cd[4] + 36)]);
        idx = idx + 1
        s = s + ((10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16)) + (1000 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + (10 * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) * uint8(stor201[cd[((32 * idx) + cd[4] + 36)]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[((32 * idx) + cd[4] + 36)]][2].field_0)
        continue 
    if cd[36] >= stor462:
        if stor461 >= block.number:
            revert with 0, 'Too fresh for lookup'
    require cd[36] < stor201.length
    if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
        revert with 0, 'SafeMath: addition overflow'
    if not uint8(stor201[cd[36]].field_16):
        if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
            revert with 0, 'SafeMath: addition overflow'
        if s < 0:
            revert with 0, 'SafeMath: addition overflow'
        require cd[36] < stor201.length
        if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
            revert with 0, 'SafeMath: addition overflow'
        if not uint8(stor201[cd[36]].field_16):
            if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'Power limit'
        else:
            if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                revert with 0, 'SafeMath: addition overflow'
            if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                if 0 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
    else:
        if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
            revert with 0, 'SafeMath: addition overflow'
        if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
            if uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if s + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            require cd[36] < stor201.length
            if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[cd[36]].field_16):
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                    if 0 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
        else:
            if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0) < uint256(sub_783efb25[cd[36]][2].field_0):
                revert with 0, 'SafeMath: addition overflow'
            if s < 0:
                revert with 0, 'SafeMath: addition overflow'
            require cd[36] < stor201.length
            if (uint8(stor201[cd[36]].field_16) / 10) + 1 < uint8(stor201[cd[36]].field_16) / 10:
                revert with 0, 'SafeMath: addition overflow'
            if not uint8(stor201[cd[36]].field_16):
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 / 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 4 * (1000 * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                    revert with 0, 'Power limit'
            else:
                if 10 * uint8(stor201[cd[36]].field_16) / uint8(stor201[cd[36]].field_16) != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10 * uint8(stor201[cd[36]].field_16)) + 1000 < 1000:
                    revert with 0, 'SafeMath: addition overflow'
                if not (10 * uint8(stor201[cd[36]].field_16)) + 1000:
                    if 0 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
                else:
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 / (10 * uint8(stor201[cd[36]].field_16)) + 1000 != (uint8(stor201[cd[36]].field_16) / 10) + 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 != (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 4 * (10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216 < s + ((10 * uint8(stor201[cd[36]].field_16)) + (1000 * uint8(stor201[cd[36]].field_16) / 10) + (10 * uint8(stor201[cd[36]].field_16) * uint8(stor201[cd[36]].field_16) / 10) + 1000 % 16777216) + uint256(sub_783efb25[cd[36]][2].field_0):
                        revert with 0, 'Power limit'
    if not s:
        if uint256(sub_783efb25[cd[36]][2].field_0) < 0:
            revert with 0, 'SafeMath: addition overflow'
    else:
        if cd[68] * s / s != cd[68]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if uint256(sub_783efb25[cd[36]][2].field_0) + (cd[68] * s / 10^18) < cd[68] * s / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        uint256(sub_783efb25[cd[36]][2].field_0) += cd[68] * s / 10^18
}



}
