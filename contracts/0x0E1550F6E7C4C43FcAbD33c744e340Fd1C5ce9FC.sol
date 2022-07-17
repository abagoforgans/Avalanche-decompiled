contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - initialize(address arg1)
#
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
mapping of struct stor108;
array of struct baseURI;
array of struct roleAdmin;
address promosAddress;
mapping of uint8 get;
uint256 nextTokenID;
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

function sub_1cfb777e(?) payable {
    require calldata.size - 4 >= 32
    return get[arg1]
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
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function get(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return get[arg1]
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
    return bool(stor105[address(arg1)][address(arg2)])
}

function nextTokenID() payable {
    return nextTokenID
}

function _fallback() payable {
    revert
}

function sub_65bb214c(?) payable {
    require calldata.size - 4 >= 32
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not game admin'
    nextTokenID = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor105[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[Mask(80, -(8 * ceil32(arg1.length) + -arg1.length + 10) + 256, 0) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffb0 + (8 * -ceil32(arg1.length)) + (8 * arg1.length) + 256][1][address(msg.sender)].field_0:
        revert with 0, 'Not game admin'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
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
        address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_38b00354(?) payable {
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
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 202
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = get[mem[(32 * idx) + 128]]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
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

function getOwnedBy(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    mem[96] = tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 101
        if idx >= tokenOfOwnerByIndex[address(arg1)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        mem[0] = sha3(address(arg1), 101)
        require idx < mem[96]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = mem[96]
    mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160 len (32 * mem[96]) + 32]
}

function getOwned() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(msg.sender)] <= test266151307()
    mem[96] = tokenOfOwnerByIndex[address(msg.sender)]
    if tokenOfOwnerByIndex[address(msg.sender)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(msg.sender)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(msg.sender)]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 101
        if idx >= tokenOfOwnerByIndex[address(msg.sender)]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(msg.sender)]) + 230 len 30]
        mem[0] = sha3(address(msg.sender), 101)
        require idx < mem[96]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        idx = idx + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(msg.sender)]) + 128] = 32
    mem[(32 * tokenOfOwnerByIndex[address(msg.sender)]) + 160] = mem[96]
    mem[(32 * tokenOfOwnerByIndex[address(msg.sender)]) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * tokenOfOwnerByIndex[address(msg.sender)]) + 160 len (32 * mem[96]) + 32]
}

function mint(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not game admin'
    nextTokenID++
    get[stor203] = arg2
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor103[stor203]:
        revert with 0, 'ERC721: token already minted'
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if not tokenOfOwnerByIndex[address(arg1)][1][stor203]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = nextTokenID
        tokenOfOwnerByIndex[address(arg1)][1][stor203] = tokenOfOwnerByIndex[address(arg1)]
    if stor103[stor203]:
        require stor103[stor203] - 1 < tokenByIndex.length
        address(tokenByIndex[stor103[stor203] - 1].field_256) = arg1
        Mask(96, 0, tokenByIndex[stor103[stor203] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = nextTokenID
        address(tokenByIndex[tokenByIndex.length].field_256) = arg1
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor103[stor203] = tokenByIndex.length
    emit Transfer(0, arg1, nextTokenID);
    emit Minted(nextTokenID, arg1);
    return nextTokenID
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not game admin'
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor103[arg1] - 1 < tokenByIndex.length
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor103[arg1] - 1 < tokenByIndex.length
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(tokenByIndex[stor103[arg1] - 1].field_256), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    approved[arg1] = 0
    if not stor103[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor103[arg1] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor103[arg1] - 1].field_256), 0, arg1);
    if Mask(255, 1, stor108[arg1].field_0 and (256 * not bool(stor108[arg1].field_0)) - 1):
        stor108[arg1].field_0 = 0
        if 31 < stor108[arg1].length:
            idx = 0
            while stor108[arg1].length + 31 / 32 > idx:
                stor108[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][arg1]:
        require tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]
        require tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][arg1] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][arg1]] = tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]]
        tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][arg1]
        require tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]
        tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]] = 0
        tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)]--
        tokenOfOwnerByIndex[address(stor102[stor103[arg1] - 1].field_256)][1][arg1] = 0
    if stor103[arg1]:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor103[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor103[arg1] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
        tokenByIndex[stor103[arg1] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
        stor103[stor102[stor102.length - 1].field_0] = stor103[arg1]
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length - 1].field_0 = 0
        tokenByIndex[tokenByIndex.length - 1].field_256 = 0
        tokenByIndex.length--
        stor103[arg1] = 0
    emit Transfer(address(tokenByIndex[stor103[arg1] - 1].field_256), 0, arg1);
    emit Burned(arg1, address(tokenByIndex[stor103[arg1] - 1].field_256));
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor103[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
            revert with 0, 32, 44, 0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
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
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(promosAddress)
    staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg2), 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    approved[arg3] = 0
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
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
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor103[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function burn(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x47414d455f41444d494e00000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not game admin'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _146 = mem[(32 * idx) + 128]
        mem[0] = msg.sender
        mem[32] = sha3(sha3(336492626609784167942478), 151) + 1
        if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
            revert with 0, 'Not game admin'
        _154 = mem[64]
        mem[64] = mem[64] + 96
        mem[_154] = 41
        mem[_154 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[_146]:
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _156 + 68] = mem[idx + _154 + 32]
                idx = idx + 32
                continue 
            mem[_156 + 100] = mem[_156 + 123 len 9]
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 132
        require stor103[_146] - 1 < tokenByIndex.length
        mem[0] = 102
        _164 = mem[64]
        mem[64] = mem[64] + 96
        mem[_164] = 41
        mem[_164 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[_146]:
            _166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _166 + 68] = mem[idx + _164 + 32]
                idx = idx + 32
                continue 
            mem[_166 + 100] = mem[_166 + 123 len 9]
            revert with memory
              from mem[64]
               len _166 + -mem[64] + 132
        require stor103[_146] - 1 < tokenByIndex.length
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(tokenByIndex[stor103[_146] - 1].field_256), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 4
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args 0, 4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        mem[0] = _146
        mem[32] = 104
        approved[_146] = 0
        _183 = mem[64]
        mem[64] = mem[64] + 96
        mem[_183] = 41
        mem[_183 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 103
        if not stor103[_146]:
            _185 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[idx + _185 + 68] = mem[idx + _183 + 32]
                idx = idx + 32
                continue 
            mem[_185 + 100] = mem[_185 + 123 len 9]
            revert with memory
              from mem[64]
               len _185 + -mem[64] + 132
        require stor103[_146] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor103[_146] - 1].field_256), 0, _146);
        if Mask(255, 1, stor108[_146].field_0 and (256 * not bool(stor108[_146].field_0)) - 1):
            stor108[_146].field_0 = 0
            if 31 < stor108[_146].length:
                s = sha3(sha3(_146, 108))
                while sha3(sha3(_146, 108)) + (stor108[_146].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        if tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][_146]:
            require tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]
            require tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][_146] - 1 < tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][_146]] = tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]]
            tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]]] = tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][_146]
            require tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]
            tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]] = 0
            tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)]--
            tokenOfOwnerByIndex[address(stor102[stor103[_146] - 1].field_256)][1][_146] = 0
        mem[0] = _146
        mem[32] = 103
        if stor103[_146]:
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor103[_146] - 1 < tokenByIndex.length
            tokenByIndex[stor103[_146] - 1].field_0 = tokenByIndex[tokenByIndex.length - 1].field_0
            tokenByIndex[stor103[_146] - 1].field_256 = tokenByIndex[tokenByIndex.length - 1].field_256
            stor103[stor102[stor102.length - 1].field_0] = stor103[_146]
            require tokenByIndex.length
            tokenByIndex[tokenByIndex.length - 1].field_0 = 0
            tokenByIndex[tokenByIndex.length - 1].field_256 = 0
            tokenByIndex.length--
            mem[0] = _146
            mem[32] = 103
            stor103[_146] = 0
        emit Transfer(address(tokenByIndex[stor103[_146] - 1].field_256), 0, _146);
        emit Burned(_146, address(tokenByIndex[stor103[_146] - 1].field_256));
        idx = idx + 1
        continue 
}

function sub_09558863(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not game admin'
    require arg3 <= test266151307()
    mem[96] = arg3
    mem[64] = (32 * uint32(arg3)) + 128
    if not arg3:
        idx = 0
        while idx < arg3:
            if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                revert with 0, 'Not game admin'
            nextTokenID++
            get[stor203] = arg2
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor203]:
                revert with 0, 'ERC721: token already minted'
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 0, 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 4
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            if tokenOfOwnerByIndex[address(arg1)][1][stor203]:
                mem[0] = nextTokenID
                mem[32] = 103
                if stor103[stor203]:
                    require stor103[stor203] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor203] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor203] - 1].field_416) = 0
                else:
                    _185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_185] = nextTokenID
                    mem[_185 + 32] = arg1
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = nextTokenID
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = nextTokenID
                    mem[32] = 103
                    stor103[stor203] = tokenByIndex.length
            else:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = nextTokenID
                tokenOfOwnerByIndex[address(arg1)][1][stor203] = tokenOfOwnerByIndex[address(arg1)]
                mem[0] = nextTokenID
                mem[32] = 103
                if stor103[stor203]:
                    require stor103[stor203] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor203] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor203] - 1].field_416) = 0
                else:
                    _190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_190] = nextTokenID
                    mem[_190 + 32] = arg1
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = nextTokenID
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = nextTokenID
                    mem[32] = 103
                    stor103[stor203] = tokenByIndex.length
            emit Transfer(0, arg1, nextTokenID);
            emit Minted(nextTokenID, arg1);
            require idx < mem[96]
            mem[(32 * idx) + 128] = nextTokenID
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * uint32(arg3)] = call.data[calldata.size len 32 * uint32(arg3)]
        idx = 0
        while idx < arg3:
            if not stor151[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
                revert with 0, 'Not game admin'
            nextTokenID++
            get[stor203] = arg2
            if not arg1:
                revert with 0, 'ERC721: mint to the zero address'
            if stor103[stor203]:
                revert with 0, 'ERC721: token already minted'
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args 0, 4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 4
            require ext_code.size(promosAddress)
            staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), 4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require not ext_call.return_data[0]
            if tokenOfOwnerByIndex[address(arg1)][1][stor203]:
                mem[0] = nextTokenID
                mem[32] = 103
                if stor103[stor203]:
                    require stor103[stor203] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor203] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor203] - 1].field_416) = 0
                else:
                    _195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_195] = nextTokenID
                    mem[_195 + 32] = arg1
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = nextTokenID
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = nextTokenID
                    mem[32] = 103
                    stor103[stor203] = tokenByIndex.length
            else:
                tokenOfOwnerByIndex[address(arg1)]++
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = nextTokenID
                tokenOfOwnerByIndex[address(arg1)][1][stor203] = tokenOfOwnerByIndex[address(arg1)]
                mem[0] = nextTokenID
                mem[32] = 103
                if stor103[stor203]:
                    require stor103[stor203] - 1 < tokenByIndex.length
                    mem[0] = 102
                    address(tokenByIndex[stor103[stor203] - 1].field_256) = arg1
                    Mask(96, 0, tokenByIndex[stor103[stor203] - 1].field_416) = 0
                else:
                    _200 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_200] = nextTokenID
                    mem[_200 + 32] = arg1
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = nextTokenID
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg1
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = nextTokenID
                    mem[32] = 103
                    stor103[stor203] = tokenByIndex.length
            emit Transfer(0, arg1, nextTokenID);
            emit Minted(nextTokenID, arg1);
            require idx < mem[96]
            mem[(32 * idx) + 128] = nextTokenID
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
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
    mem[128] = stor108[arg1].field_0
    idx = 128
    s = 0
    while stor108[arg1].length + 96 > idx:
        mem[idx + 32] = stor108[arg1][s].field_256
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
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor108[arg1].length, data=mem[128 len stor108[arg1].length])
    if stor108[arg1].length:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor108[arg1].length)] = mem[128 len floor32(stor108[arg1].length)]
        var34001 = floor32(stor108[arg1].length) + 128
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 224 len stor108[arg1].length % 32] = mem[floor32(stor108[arg1].length) + -stor108[arg1].length % 32 + 160 len stor108[arg1].length % 32]
        mem[64] = stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])]
        var39001 = ceil32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return 32, mem[stor108[arg1].length + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160]) + 64], 
    if not arg1:
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor108[arg1].length) + 160 len floor32(baseURI.length)]
        var35001 = ceil32(stor108[arg1].length) + floor32(baseURI.length) + 160
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
    return 32, mem[s + ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor108[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor103[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor103[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor103[arg3] - 1 < tokenByIndex.length
    if msg.sender == address(tokenByIndex[stor103[arg3] - 1].field_256):
        if not stor103[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor103[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor103[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        approved[arg3] = 0
        if not stor103[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor103[arg3] - 1 < tokenByIndex.length
        emit Approval(address(tokenByIndex[stor103[arg3] - 1].field_256), 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor103[arg3]:
                    require stor103[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
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
                    address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor103[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
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
                address(tokenByIndex[stor103[arg3] - 1].field_256) = arg2
                Mask(96, 0, tokenByIndex[stor103[arg3] - 1].field_416) = 0
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    mem[868 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
                address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                stor103[arg3] = tokenByIndex.length
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[960 len 4] = 0
                    mem[932 len 0] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
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
        if approved[arg3] != msg.sender:
            if not stor105[address(stor102[stor103[arg3] - 1].field_256)][address(msg.sender)]:
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
        if address(tokenByIndex[stor103[arg3] - 1].field_256) != arg1:
            revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        require ext_code.size(promosAddress)
        staticcall promosAddress.getBit(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        approved[arg3] = 0
        if not stor103[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
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
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                mem[896 len 4] = 0
                mem[868 len 0] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
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
            address(tokenByIndex[tokenByIndex.length].field_256) = arg2
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            stor103[arg3] = tokenByIndex.length
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[772 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                mem[960 len 4] = 0
                mem[932 len 0] = 0
                call arg2.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                50,
                                0x744552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
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
