contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const UPDATE_CONTRACT_URI_ROLE = sha3(Mask(192, 64, 'UPDATE_CONTRACT_URI_ROLE') >> 64)

const UPDATE_TOKEN_URI_ROLE = sha3(Mask(168, 88, 'UPDATE_TOKEN_URI_ROLE') >> 88)

const DEFAULT_ADMIN_ROLE = 0

const PAUSED_ROLE = sha3(Mask(88, 168, 'PAUSED_ROLE') >> 168)


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
mapping of struct stor8;
array of struct baseURI;
uint8 stor10;
array of struct roleAdmin;
address owner;
uint256 tokenIdPointer;
array of uint256 contractUri;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
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

function tokenIdPointer() payable {
    return tokenIdPointer
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
}

function paused() payable {
    return bool(stor10)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
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

function owner() payable {
    return owner
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

function contractUri() payable {
    return contractUri[0 len contractUri.length]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if stor10:
        revert with 0, 'Pausable: paused'
    if not roleAdmin['PAUSED_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Must have pause role'
    if stor10:
        revert with 0, 'Pausable: paused'
    stor10 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not stor10:
        revert with 0, 'Pausable: not paused'
    if not roleAdmin['PAUSED_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Must have pause role'
    if not stor10:
        revert with 0, 'Pausable: not paused'
    stor10 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[Mask(168, -(8 * ceil32(arg1.length) + -arg1.length + 21) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff58 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 'Must have update token uri role'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
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

function setTokenURI(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[Mask(168, -(8 * ceil32(arg2.length) + -arg2.length + 21) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff58 + (8 * -ceil32(arg2.length)) + (8 * arg2.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 'Must have update token uri role'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor8[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
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
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function getApprovedBulk(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not stor3[mem[(32 * idx) + 128]]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[(64 * arg1.length) + 272 len 20]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = approved[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function setContractUri(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not roleAdmin[Mask(192, -(8 * ceil32(arg1.length) + -arg1.length + 24) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff40 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    34,
                    0x654d75737420686176652075706461746520636f6e74726163742075726920726f6c,
                    mem[ceil32(arg1.length) + 230 len 30]
    contractUri[] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ContractUriUpdated(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit ContractUriUpdated(string arg1):
                                Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}

function approveBulk(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _49 = mem[(32 * idx) + 128]
        _50 = mem[64]
        mem[64] = mem[64] + 96
        mem[_50] = 41
        mem[_50 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 3
        if not stor3[_49]:
            _52 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _52 + 68] = mem[idx + _50 + 32]
                idx = idx + 32
                continue 
            mem[_52 + 100] = mem[_52 + 123 len 9]
            revert with memory
              from mem[64]
               len _52 + -mem[64] + 132
        require stor3[_49] - 1 < tokenByIndex.length
        if arg1 == tokenByIndex[stor3[_49] - 1].field_256:
            revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[mem[64] + 101 len 31]
        if msg.sender == tokenByIndex[stor3[_49] - 1].field_256:
            mem[0] = _49
            mem[32] = 4
            approved[_49] = arg1
            _63 = mem[64]
            mem[64] = mem[64] + 96
            mem[_63] = 41
            mem[_63 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[32] = 3
            if stor3[_49]:
                require stor3[_49] - 1 < tokenByIndex.length
                mem[0] = 2
                emit Approval(tokenByIndex[stor3[_49] - 1].field_256, arg1, _49);
                idx = idx + 1
                continue 
            _69 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _69 + 68] = mem[idx + _63 + 32]
                idx = idx + 32
                continue 
            mem[_69 + 100] = mem[_69 + 123 len 9]
            revert with memory
              from mem[64]
               len _69 + -mem[64] + 132
        if not stor5[stor2[stor3[_49] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x654552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[mem[64] + 124 len 8]
        mem[0] = _49
        mem[32] = 4
        approved[_49] = arg1
        _74 = mem[64]
        mem[64] = mem[64] + 96
        mem[_74] = 41
        mem[_74 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 3
        if stor3[_49]:
            require stor3[_49] - 1 < tokenByIndex.length
            mem[0] = 2
            emit Approval(tokenByIndex[stor3[_49] - 1].field_256, arg1, _49);
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 41
        idx = 0
        while idx < 41:
            mem[idx + _82 + 68] = mem[idx + _74 + 32]
            idx = idx + 32
            continue 
        mem[_82 + 100] = mem[_82 + 123 len 9]
        revert with memory
          from mem[64]
           len _82 + -mem[64] + 132
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    if stor10:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
        tokenByIndex[stor3[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != msg.sender:
        if not stor3[arg1]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg1] != msg.sender:
            if not stor5[stor2[stor3[arg1] - 1].field_256][address(msg.sender)]:
                revert with 0, 'Caller is not owner nor approved'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if stor10:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[399 len 21]
    approved[arg1] = 0
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
    if Mask(255, 1, stor8[arg1].field_0 and (256 * not stor8[arg1].field_0) - 1):
        stor8[arg1].field_0 = 0
        if 31 < stor8[arg1].length:
            idx = 0
            while stor8[arg1].length + 31 / 32 > idx:
                stor8[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] = 0
    if stor3[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor3[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor3[stor2[stor2.length - 1].field_0] = stor3[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor3[arg1] = 0
    emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, 0, arg1);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[64] = ceil32(stor8[arg1].length) + 128
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var23001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 160 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(stor8[arg1].length) + 160] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32] or Mask(8 * -stor8[arg1].length % 32 + 32, -(8 * -stor8[arg1].length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(stor8[arg1].length) + 160])
        _1006 = mem[64]
        mem[64] = stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 160
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 160] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1083 = mem[_1006]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        if not _1083 % 32:
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192 len _1083 + 32]
        mem[floor32(_1083) + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 224] = mem[floor32(_1083) + stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + -(_1083 % 32) + 256 len _1083 % 32]
        return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + baseURI.length + 192 len floor32(_1083) + 64]
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + 192
        mem[ceil32(stor8[arg1].length) + 128] = 1
        mem[ceil32(stor8[arg1].length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor8[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor8[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1048 = mem[_1002]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1048 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len _1048 + 32]
        mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 288] = mem[floor32(_1048) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + -(_1048 % 32) + 320 len _1048 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + baseURI.length + 256 len floor32(_1048) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + 128] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 9
        mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
        mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1246 = mem[_1232]
        mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1246 % 32:
            return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1246 + 32], 
        mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1246) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1246 % 32) + 288 len _1246 % 32]
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1246) + 64], 
    mem[ceil32(stor8[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor8[arg1].length) + 128])] = mem[ceil32(stor8[arg1].length) + 160 len floor32(mem[ceil32(stor8[arg1].length) + 128])]
    mem[ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor8[arg1].length) + 128] % 32] = mem[ceil32(stor8[arg1].length) + floor32(mem[ceil32(stor8[arg1].length) + 128]) + -(mem[ceil32(stor8[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor8[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1249 = mem[_1236]
    mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1249 % 32:
        return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len _1249 + 32], 
    mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1249) + mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + -(_1249 % 32) + 288 len _1249 % 32]
    return 32, mem[mem[ceil32(stor8[arg1].length) + 128] + ceil32(stor8[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1249) + 64], 
}

function mint(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if tokenIdPointer + 1 < tokenIdPointer:
        revert with 0, 'SafeMath: addition overflow'
    tokenIdPointer++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor13 + 1]:
        revert with 0, 'ERC721: token already minted'
    if stor10:
        revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[239 len 21]
    if tokenOfOwnerByIndex[address(arg1)][1][stor13 + 1]:
        if stor3[stor13 + 1]:
            require stor3[stor13 + 1] - 1 < tokenByIndex.length
            tokenByIndex[stor3[stor13 + 1] - 1].field_256 = arg1
            tokenByIndex[stor3[stor13 + 1] - 1].field_416 = 0
            emit Transfer(0, arg1, tokenIdPointer + 1);
            if not ext_code.size(arg1):
                if not stor3[stor13 + 1]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg2.length) + 272 len 20]
                stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
                mem[ceil32(arg2.length) + 160] = 32
                mem[ceil32(arg2.length) + 192] = arg2.length
                emit Mint(address arg1, uint256 arg2, string arg3):
                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                          mem[arg2.length + 192 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
                          arg1,
                          tokenIdPointer + 1,
                mem[ceil32(arg2.length) + 160] = tokenIdPointer + 1
                return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenIdPointer + 1, 128, 0
            mem[608 len 4] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args 0, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[452]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 539 len 14]
            if not stor3[stor13 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + ceil32(arg2.length) + 565 len 20]
            stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 453] = 32
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 485] = arg2.length
            emit Mint(address arg1, uint256 arg2, string arg3):
                      Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                      mem[ceil32(return_data.size) + arg2.length + 485 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
                      arg1,
                      tokenIdPointer + 1,
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 453] = tokenIdPointer + 1
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
                   mem[ceil32(return_data.size) + arg2.length + 485 len -arg2.length + ceil32(arg2.length)]
    else:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenIdPointer + 1
        tokenOfOwnerByIndex[address(arg1)][1][stor13 + 1] = tokenOfOwnerByIndex[address(arg1)]
        if stor3[stor13 + 1]:
            require stor3[stor13 + 1] - 1 < tokenByIndex.length
            tokenByIndex[stor3[stor13 + 1] - 1].field_256 = arg1
            tokenByIndex[stor3[stor13 + 1] - 1].field_416 = 0
            emit Transfer(0, arg1, tokenIdPointer + 1);
            if not ext_code.size(arg1):
                if not stor3[stor13 + 1]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg2.length) + 272 len 20]
                stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
                mem[ceil32(arg2.length) + 160] = 32
                mem[ceil32(arg2.length) + 192] = arg2.length
                emit Mint(address arg1, uint256 arg2, string arg3):
                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                          mem[arg2.length + 192 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
                          arg1,
                          tokenIdPointer + 1,
                mem[ceil32(arg2.length) + 160] = tokenIdPointer + 1
                return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[526 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenIdPointer + 1, 128, 0
            mem[608 len 4] = 0
            mem[580 len 0] = 0
            call arg1.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenIdPointer + 1, 128, 0) << 1024, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[406 len 14], 0, 32, 50) >> 544
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[452]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 539 len 14]
            if not stor3[stor13 + 1]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(return_data.size) + ceil32(arg2.length) + 565 len 20]
            stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 453] = 32
            mem[ceil32(return_data.size) + ceil32(arg2.length) + 485] = arg2.length
            emit Mint(address arg1, uint256 arg2, string arg3):
                      Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                      mem[ceil32(return_data.size) + arg2.length + 485 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
                      arg1,
                      tokenIdPointer + 1,
            return (tokenIdPointer + 1)
    ('iszero', ('stor', ('map', ('add', 1, ('stor', ('name', 'stor13', 13))), ('name', 'stor3', 3))))
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = tokenIdPointer + 1
    tokenByIndex[tokenByIndex.length].field_256 = arg1
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor3[stor13 + 1] = tokenByIndex.length
    emit Transfer(0, arg1, tokenIdPointer + 1);
    if not ext_code.size(arg1):
        if not stor3[stor13 + 1]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 336 len 20]
        stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + 224] = 32
        mem[ceil32(arg2.length) + 256] = arg2.length
        emit Mint(address arg1, uint256 arg2, string arg3):
                  Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                  mem[arg2.length + 256 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
                  arg1,
                  tokenIdPointer + 1,
        mem[ceil32(arg2.length) + 224] = tokenIdPointer + 1
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 256 len -arg2.length + ceil32(arg2.length)]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[590 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[484 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenIdPointer + 1, 128, 0
    mem[672 len 4] = 0
    call arg1.0x80 with:
         gas gas_remaining wei
        args 0, mem[644 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 
                    32,
                    50,
                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[470 len 14])
    mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    32,
                    50,
                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[470 len 14])
    require return_data.size >= 32
    if Mask(32, 224, mem[516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        revert with 0, 
                    32,
                    50,
                    0x744552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                    mem[ceil32(return_data.size) + 603 len 14]
    if not stor3[stor13 + 1]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(return_data.size) + ceil32(arg2.length) + 629 len 20]
    stor8[stor13 + 1][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 517] = 32
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 549] = arg2.length
    emit Mint(address arg1, uint256 arg2, string arg3):
              Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
              mem[ceil32(return_data.size) + arg2.length + 549 len (2 * ceil32(arg2.length)) + -arg2.length + 32],
              arg1,
              tokenIdPointer + 1,
    mem[ceil32(return_data.size) + ceil32(arg2.length) + 517] = tokenIdPointer + 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), 
           mem[ceil32(return_data.size) + arg2.length + 549 len -arg2.length + ceil32(arg2.length)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor3[arg3] - 1].field_256:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        if stor10:
            revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
        approved[arg3] = 0
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if not tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
            if stor3[arg3]:
                require stor3[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                tokenByIndex[stor3[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                stor3[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            if stor10:
                revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
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
            if stor3[arg3]:
                require stor3[arg3] - 1 < tokenByIndex.length
                tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                tokenByIndex[stor3[arg3] - 1].field_416 = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                stor3[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            if stor10:
                revert with 0, 32, 43, 0x734552433732315061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[431 len 21]
            approved[arg3] = 0
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor3[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor3[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor3[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor3[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
