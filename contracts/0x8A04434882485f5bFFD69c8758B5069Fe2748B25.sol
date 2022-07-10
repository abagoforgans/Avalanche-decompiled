contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, string arg3)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


array of struct roleAdmin;
mapping of uint8 stor101;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor153;
mapping of address approved;
mapping of uint8 stor155;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor158;
array of struct baseURI;
uint8 paused;
uint256 stor351;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor101[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor153[arg1]:
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
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor153[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor153[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor153[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
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
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor155[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor155[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7243617074757265436c75624e66743a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[210 len 18]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6543617074757265436c75624e66743a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[212 len 16]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor153[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor153[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor153[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor153[arg2] - 1].field_256 != msg.sender:
        if not stor155[stor152[stor153[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor153[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor153[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor153[arg2] - 1].field_256, arg1, arg2);
}

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6443617074757265436c75624e66743a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[209 len 19]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor153[stor351]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[207 len 21]
    if not tokenOfOwnerByIndex[address(arg1)][1][stor351]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor351
        tokenOfOwnerByIndex[address(arg1)][1][stor351] = tokenOfOwnerByIndex[address(arg1)]
    if stor153[stor351]:
        require stor153[stor351] - 1 < tokenByIndex.length
        tokenByIndex[stor153[stor351] - 1].field_256 = arg1
        tokenByIndex[stor153[stor351] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor351
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor153[stor351] = tokenByIndex.length
    emit Transfer(0, arg1, stor351);
    stor351++
}

function sub_a8cef929(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    45,
                    0x6443617074757265436c75624e66743a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[ceil32(arg2.length) + 241 len 19]
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor153[stor351]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 
                    32,
                    43,
                    0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[ceil32(arg2.length) + 239 len 21]
    if not tokenOfOwnerByIndex[address(arg1)][1][stor351]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor351
        tokenOfOwnerByIndex[address(arg1)][1][stor351] = tokenOfOwnerByIndex[address(arg1)]
    if stor153[stor351]:
        require stor153[stor351] - 1 < tokenByIndex.length
        tokenByIndex[stor153[stor351] - 1].field_256 = arg1
        tokenByIndex[stor153[stor351] - 1].field_416 = 0
        emit Transfer(0, arg1, stor351);
        if not stor153[stor351]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 240 len 20]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor351
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor153[stor351] = tokenByIndex.length
        emit Transfer(0, arg1, stor351);
        if not stor153[stor351]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 304 len 20]
    ('bool', ('stor', ('map', ('stor', ('name', 'stor351', 351)), ('name', 'stor153', 153))))
    if arg2.length:
        stor158[stor351][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        stor158[stor351].field_0 = 0
        idx = 0
        while stor158[stor351].length + 31 / 32 > idx:
            stor158[stor351][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor351++
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor153[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor153[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor153[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor153[arg3] - 1].field_256 != msg.sender:
        if not stor153[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor155[stor152[stor153[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor153[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor153[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor153[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    if paused:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg3] = 0
    if not stor153[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor153[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor153[arg3] - 1].field_256, 0, arg3);
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
    if stor153[arg3]:
        require stor153[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor153[arg3] - 1].field_256 = arg2
        tokenByIndex[stor153[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor153[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor153[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor153[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor153[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor153[arg1] - 1].field_256 != msg.sender:
        if not stor153[arg1]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg1] != msg.sender:
            if not stor155[stor152[stor153[arg1] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            48,
                            0x644552433732314275726e61626c653a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[308 len 16]
    if not stor153[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor153[arg1] - 1 < tokenByIndex.length
    if paused:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg1] = 0
    if not stor153[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor153[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor153[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, (256 * not stor158[arg1].field_0) - 1 and stor158[arg1].field_0):
        stor158[arg1].field_0 = 0
        if 31 < stor158[arg1].length:
            idx = 0
            while stor158[arg1].length + 31 / 32 > idx:
                stor158[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor152[stor153[arg1] - 1].field_256][1][arg1] = 0
    if stor153[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor153[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor153[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor153[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor153[stor152[stor152.length - 1].field_0] = stor153[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor153[arg1] = 0
    emit Transfer(tokenByIndex[stor153[arg1] - 1].field_256, 0, arg1);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor153[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 158
    mem[96] = stor158[arg1].length
    mem[128] = stor158[arg1].field_0
    idx = 128
    s = 0
    while stor158[arg1].length + 96 > idx:
        mem[idx + 32] = stor158[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor158[arg1].length) + 128] = baseURI.length
    mem[0] = 159
    mem[ceil32(stor158[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor158[arg1].length) + 160
    s = 0
    while ceil32(stor158[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        return Array(len=stor158[arg1].length, data=mem[128 len stor158[arg1].length])
    if stor158[arg1].length > 0:
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor158[arg1].length) + 160 len floor32(baseURI.length)]
        var29001 = ceil32(stor158[arg1].length) + floor32(baseURI.length) + 160
        var29002 = ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = mem[ceil32(stor158[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192])
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len floor32(stor158[arg1].length)] = mem[128 len floor32(stor158[arg1].length)]
        var32001 = floor32(stor158[arg1].length) + 128
        var32002 = baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(stor158[arg1].length) + 192
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(stor158[arg1].length) + -stor158[arg1].length % 32 + 224 len stor158[arg1].length % 32] = mem[floor32(stor158[arg1].length) + -stor158[arg1].length % 32 + 160 len stor158[arg1].length % 32]
        mem[64] = stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192
        mem[stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192] = 32
        mem[stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160])]
        var37001 = ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160]) + stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 256] = mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160]) + stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor158[arg1].length + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224 len floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[64] = ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192] = '0'
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor158[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = mem[ceil32(stor158[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256])
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 256 len 0] = None
        var36001 = ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192
        mem[64] = baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 257
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 257] = 32
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 289] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224]
        mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 321 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 289 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 321] = mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 289 len floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 160] = s
    mem[64] = ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192
    if s:
        mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor158[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 256 len baseURI.length % 32] = mem[ceil32(stor158[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32]
    mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(s)] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224
    mem[s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 32
    mem[s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288] = mem[floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return 32, mem[s + baseURI.length + ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(mem[ceil32(stor158[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor153[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor153[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor153[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor153[arg3] - 1].field_256:
        if not stor153[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor153[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor153[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        if paused:
            revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
        approved[arg3] = 0
        if not stor153[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor153[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor153[arg3] - 1].field_256, 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor153[arg3]:
                require stor153[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                tokenByIndex[stor153[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
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
                stor153[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
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
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor153[arg3]:
                    require stor153[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor153[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
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
                    stor153[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
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
                if stor153[arg3]:
                    require stor153[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor153[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
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
                    stor153[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor153[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor153[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor153[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor153[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            if paused:
                revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
            approved[arg3] = 0
            if not stor153[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor153[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor153[arg3] - 1].field_256, 0, arg3);
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
            if stor153[arg3]:
                require stor153[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                tokenByIndex[stor153[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[694 len 14],
                                    Mask(144, -256, mem[694 len 14]) << 256
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
                stor153[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                    if ext_code.size(arg2) <= 0:
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
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[758 len 14],
                                    Mask(144, -256, mem[758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor155[stor152[stor153[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor153[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor153[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor153[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x654552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            if paused:
                revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
            approved[arg3] = 0
            if not stor153[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor153[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor153[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor153[arg3]:
                    require stor153[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor153[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
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
                    stor153[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
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
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor153[arg3]:
                        require stor153[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor153[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                        stor153[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
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
                    if stor153[arg3]:
                        require stor153[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor153[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor153[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
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
                        stor153[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
}



}
