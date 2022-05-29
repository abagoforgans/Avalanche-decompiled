contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const sub_54dfd295(?) = 3

const sub_5b614fec(?) = 0

const sub_5dba06e4(?) = sha3(0x4e4f5f4f574e45445f4c494d4954)

const sub_8e1f4fc3(?) = 0

const sub_bec8300b(?) = 0

const sub_c820c332(?) = 0

const sub_fbaa1770(?) = 2

const LC = 1

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


mapping of uint8 stor51;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor103;
mapping of address approved;
mapping of uint8 stor105;
array of uint256 name;
array of uint256 symbol;
array of uint256 baseURI;
array of struct roleAdmin;
uint256 stor201;
mapping of uint256 sub_9a1cdba1;
mapping of address sub_99896958;
array of uint256 tierURI;
mapping of uint256 stor336492626609784167942478;

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
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
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

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
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
    return tokenByIndex[stor103[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length]
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

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_99896958(?) payable {
    require calldata.size - 4 >= 32
    return sub_99896958[arg1][0]
}

function sub_9a1cdba1(?) payable {
    require calldata.size - 4 >= 32
    return sub_9a1cdba1[arg1][0]
}

function getTierURI(uint256 arg1) payable {
    return tierURI[arg1][0][0 len tierURI[arg1][0].length]
}

function tokenURI(uint256 arg1) payable {
    return tierURI[stor202[arg1][0]][0][0 len tierURI[stor202[arg1][0]][0].length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor105[address(arg1)][address(arg2)])
}

function sub_fed860d9(?) payable {
    return tierURI[stor202[arg1][0]][0][0 len tierURI[stor202[arg1][0]][0].length]
}

function _fallback() payable {
    revert
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_9a1cdba1[arg1][0], sub_9a1cdba1[arg1][1], sub_9a1cdba1[arg1][2], sub_9a1cdba1[arg1][3], sub_99896958[arg1][0]
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_57144644(?) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    sub_9a1cdba1[arg1][1] = arg2
    emit 0x2e85b301: arg2, arg1
}

function sub_d49ae945(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not roleAdmin[Mask(80, -(8 * ceil32(arg3.length) + -arg3.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg3.length)) + (8 * arg3.length) + 256][1][address(msg.sender)].field_0:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    tierURI[arg1][arg2][] = Array(len=arg3.length, data=arg3[all])
}

function sub_e97cf8e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = 1
        mem[32] = sha3(mem[(32 * idx) + 128], 202)
        if sub_9a1cdba1[mem[(32 * idx) + 128]][1] == arg2:
            require idx < arg1.length
            if mem[(32 * idx) + 128] <= stor201:
                idx = idx + 1
                continue 
            else:
                return 0
        else:
            return 0
    return 1
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    stor201++
    sub_9a1cdba1[stor201][0] = arg2
    sub_9a1cdba1[stor201][1] = arg3
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor103[stor201]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor201]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
        tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
    if stor103[stor201]:
        require stor103[stor201] - 1 < tokenByIndex.length
        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
        tokenByIndex[stor103[stor201] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor201
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor103[stor201] = tokenByIndex.length
    emit Transfer(0, arg1, stor201);
    emit 0xec81cf35: stor201, arg2, arg3, arg1
}

function mint(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    stor201++
    sub_9a1cdba1[stor201][0] = arg2
    sub_9a1cdba1[stor201][1] = arg3
    sub_99896958[stor201][0] = arg4
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor103[stor201]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor201]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
        tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
    if stor103[stor201]:
        require stor103[stor201] - 1 < tokenByIndex.length
        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
        tokenByIndex[stor103[stor201] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor201
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor103[stor201] = tokenByIndex.length
    emit Transfer(0, arg1, stor201);
    emit 0xeb0eeaa3: stor201, arg2, arg3, arg4, arg1
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
    if arg1 == tokenByIndex[stor103[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor103[arg2] - 1].field_256 != msg.sender:
        if not stor105[stor102[stor103[arg2] - 1].field_256][address(msg.sender)]:
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
    emit Approval(tokenByIndex[stor103[arg2] - 1].field_256, arg1, arg2);
}

function getOwned(address arg1) payable {
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

function sub_a18e7914(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    if stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _55 = mem[(32 * idx) + 128]
            if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                if not roleAdmin[0][1][address(msg.sender)].field_0:
                    revert with 0, 'NA'
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 202)
            sub_9a1cdba1[mem[(32 * idx) + 128]][1] = arg2
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x2e85b301: arg2, _55
            idx = idx + 1
            continue 
    else:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _56 = mem[(32 * idx) + 128]
            if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                if not roleAdmin[0][1][address(msg.sender)].field_0:
                    revert with 0, 'NA'
            mem[0] = 1
            mem[32] = sha3(mem[(32 * idx) + 128], 202)
            sub_9a1cdba1[mem[(32 * idx) + 128]][1] = arg2
            mem[(32 * arg1.length) + 128] = arg2
            emit 0x2e85b301: arg2, _56
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
    if tokenByIndex[stor103[arg3] - 1].field_256 != msg.sender:
        if not stor103[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor105[stor102[stor103[arg3] - 1].field_256][address(msg.sender)]:
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
    if tokenByIndex[stor103[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor103[arg3] - 1].field_256, 0, arg3);
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
        tokenByIndex[stor103[arg3] - 1].field_256 = arg2
        tokenByIndex[stor103[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor103[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_81d765dc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    if stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        idx = 0
        while idx < arg5:
            if stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                stor201++
                sub_9a1cdba1[stor201][0] = arg2
                sub_9a1cdba1[stor201][1] = arg3
                sub_99896958[stor201][0] = arg4
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][stor201]:
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_262] = stor201
                        mem[_262 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
                    tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_267] = stor201
                        mem[_267 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
            else:
                if not roleAdmin[0][1][address(msg.sender)].field_0:
                    revert with 0, 'NA'
                stor201++
                sub_9a1cdba1[stor201][0] = arg2
                sub_9a1cdba1[stor201][1] = arg3
                sub_99896958[stor201][0] = arg4
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][stor201]:
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_318] = stor201
                        mem[_318 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
                    tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_323] = stor201
                        mem[_323 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
            emit Transfer(0, arg1, stor201);
            mem[mem[64]] = stor201
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            emit 0xeb0eeaa3: stor201, arg2, arg3, arg4, arg1
            idx = idx + 1
            continue 
    else:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
        idx = 0
        while idx < arg5:
            if stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                stor201++
                sub_9a1cdba1[stor201][0] = arg2
                sub_9a1cdba1[stor201][1] = arg3
                sub_99896958[stor201][0] = arg4
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][stor201]:
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_272] = stor201
                        mem[_272 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
                    tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_277] = stor201
                        mem[_277 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
            else:
                if not roleAdmin[0][1][address(msg.sender)].field_0:
                    revert with 0, 'NA'
                stor201++
                sub_9a1cdba1[stor201][0] = arg2
                sub_9a1cdba1[stor201][1] = arg3
                sub_99896958[stor201][0] = arg4
                if not arg1:
                    revert with 0, 'ERC721: mint to the zero address'
                if stor103[stor201]:
                    revert with 0, 'ERC721: token already minted'
                if tokenOfOwnerByIndex[address(arg1)][1][stor201]:
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = stor201
                        mem[_328 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
                else:
                    tokenOfOwnerByIndex[address(arg1)]++
                    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor201
                    tokenOfOwnerByIndex[address(arg1)][1][stor201] = tokenOfOwnerByIndex[address(arg1)]
                    mem[0] = stor201
                    mem[32] = 103
                    if stor103[stor201]:
                        require stor103[stor201] - 1 < tokenByIndex.length
                        mem[0] = 102
                        tokenByIndex[stor103[stor201] - 1].field_256 = arg1
                        tokenByIndex[stor103[stor201] - 1].field_416 = 0
                    else:
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = stor201
                        mem[_333 + 32] = arg1
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor201
                        tokenByIndex[tokenByIndex.length].field_256 = arg1
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor201
                        mem[32] = 103
                        stor103[stor201] = tokenByIndex.length
            emit Transfer(0, arg1, stor201);
            mem[mem[64]] = stor201
            mem[mem[64] + 32] = arg2
            mem[mem[64] + 64] = arg3
            mem[mem[64] + 96] = arg4
            emit 0xeb0eeaa3: stor201, arg2, arg3, arg4, arg1
            idx = idx + 1
            continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor103[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor103[arg3] - 1].field_256:
        if not stor103[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor103[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor103[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor103[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor103[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor103[arg3] - 1].field_256, 0, arg3);
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
            tokenByIndex[stor103[arg3] - 1].field_256 = arg2
            tokenByIndex[stor103[arg3] - 1].field_416 = 0
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[896 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[868 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 827 len 14]
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg3
            tokenByIndex[tokenByIndex.length].field_256 = arg2
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor103[arg3] = tokenByIndex.length
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                mem[960 len 4] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[932 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                require return_data.size >= 32
                if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor103[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor103[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor103[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor103[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor103[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor103[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor103[arg3] - 1].field_256, 0, arg3);
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
                tokenByIndex[stor103[arg3] - 1].field_256 = arg2
                tokenByIndex[stor103[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 827 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg3
                tokenByIndex[tokenByIndex.length].field_256 = arg2
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor103[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor105[stor102[stor103[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor103[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor103[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor103[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor103[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor103[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor103[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor103[arg3]:
                        require stor103[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor103[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor103[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor103[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor103[arg3]:
                        require stor103[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor103[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor103[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor103[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
            else:
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
                    tokenByIndex[stor103[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor103[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor103[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
}



}
