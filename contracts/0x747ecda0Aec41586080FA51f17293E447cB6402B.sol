contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of struct stor8;
array of struct baseURI;
uint256 stor12;
mapping of struct tokens;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
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

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = tokens[arg1][1].field_0
    idx = 128
    s = 0
    while tokens[arg1][1].length + 96 > idx:
        mem[idx + 32] = tokens[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return tokens[arg1].field_0, 
           Array(len=tokens[arg1][1].length, data=mem[128 len tokens[arg1][1].length]),
           tokens[arg1].field_512,
           tokens[arg1].field_768,
           tokens[arg1].field_1024,
           tokens[arg1].field_1280
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
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

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
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
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'INV'
    if not stor3[arg1]:
        revert with 0, 'NE'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    require tokenByIndex[stor3[arg1] - 1].field_256
    if tokenByIndex[stor3[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'NOWN'
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != tokenByIndex[stor3[arg1] - 1].field_256:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not msg.sender:
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
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
    if tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]:
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]]] = tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1]
        require tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]] = 0
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256]--
        tokenOfOwnerByIndex[stor2[stor3[arg1] - 1].field_256][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor3[arg1] - 1].field_256 = msg.sender
        tokenByIndex[stor3[arg1] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg1] = tokenByIndex.length
    emit Transfer(tokenByIndex[stor3[arg1] - 1].field_256, msg.sender, arg1);
    tokens[stor12].field_1024 = tokens[stor12].field_768
    tokens[stor12].field_768 = msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
        revert with 0, 32, 36, 0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor8[arg1].length) + 128] = baseURI.length
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length > 0:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var30001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        var30002 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192])
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var33001 = floor32(stor8[arg1].length) + 128
        var33002 = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + 192
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 32
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        var38001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32]), 
    if not arg1:
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256])
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len 0] = None
        var37001 = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192
        mem[64] = baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 257
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 257] = 32
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32:
            return 32, mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 321] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32) + 353 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] % 32]
        return 32, mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 289 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192
    if s:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 256 len baseURI.length % 32] = mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + -baseURI.length % 32 + 192 len baseURI.length % 32]
    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(s)]
    mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 256 len s % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(s) + -(s % 32) + 224 len s % 32]
    mem[64] = s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 32
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32:
        return 32, mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 32], 
    mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 288] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32) + 320 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] % 32]
    return 32, mem[s + baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 64], 
}

function sub_06bdc949(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    require msg.sender
    require stor12 < 5
    stor12++
    if stor3[stor12]:
        revert with 0, 'TAE'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor12]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor12]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor12
        tokenOfOwnerByIndex[address(msg.sender)][1][stor12] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[stor12]:
        require stor3[stor12] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor12] - 1].field_256 = msg.sender
        tokenByIndex[stor3[stor12] - 1].field_416 = 0
        emit Transfer(0, msg.sender, stor12);
        if ext_code.size(msg.sender) <= 0:
            if not stor3[stor12]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg1.length) + ceil32(arg3.length) + 304 len 20]
            if arg3.length:
                stor8[stor12][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor12].field_0 = 0
                idx = 0
                while stor8[stor12].length + 31 / 32 > idx:
                    stor8[stor12][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 228] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 260] = 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 292] = stor12
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 324] = 128
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 356] = 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 388 len 0] = None
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = 164
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 228 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 224 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 388] = 50
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 420 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg1.length) + ceil32(arg3.length) + 590 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 484 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor12, 128, 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 672 len 4] = 0
            call msg.sender.0x80 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg1.length) + ceil32(arg3.length) + 644 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with arg1[all]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14],
                                Mask(144, -256, mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14]) << 256
                require arg1.length >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14]
                if not stor3[stor12]:
                    revert with 0, 'nERC721Metadata: URI set of nonexistent tokeemente', mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14]
            else:
                mem[ceil32(arg1.length) + ceil32(arg3.length) + 484] = return_data.size
                mem[ceil32(arg1.length) + ceil32(arg3.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14],
                                Mask(144, -256, mem[ceil32(arg1.length) + ceil32(arg3.length) + 470 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[ceil32(arg1.length) + ceil32(arg3.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(return_data.size) + 603 len 14]
                if not stor3[stor12]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(return_data.size) + 597 len 20]
            ('bool', ('stor', ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor3', 3))))
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                stor8[stor12][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                stor8[stor12].field_0 = 0
                idx = 0
                while stor8[stor12].length + 31 / 32 > idx:
                    stor8[stor12][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = stor12
        mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = stor12
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor12] = tokenByIndex.length
        emit Transfer(0, msg.sender, stor12);
        if ext_code.size(msg.sender) <= 0:
            if not stor3[stor12]:
                revert with 0, 
                            32,
                            44,
                            0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                            mem[ceil32(arg1.length) + ceil32(arg3.length) + 368 len 20]
            if arg3.length:
                stor8[stor12][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor8[stor12].field_0 = 0
                idx = 0
                while stor8[stor12].length + 31 / 32 > idx:
                    stor8[stor12][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 292] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 324] = 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 356] = stor12
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 388] = 128
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 420] = 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 452 len 0] = None
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = 164
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 288 len 4] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4)
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 452] = 50
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 484 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg1.length) + ceil32(arg3.length) + 654 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 548 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, stor12, 128, 0
            mem[ceil32(arg1.length) + ceil32(arg3.length) + 736 len 4] = 0
            call msg.sender.0x80 with:
                 gas gas_remaining wei
                args 0, mem[ceil32(arg1.length) + ceil32(arg3.length) + 708 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length > 0:
                        revert with arg1[all]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14],
                                Mask(144, -256, mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14]) << 256
                require arg1.length >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14]
                if not stor3[stor12]:
                    revert with 0, 'nERC721Metadata: URI set of nonexistent tokeemente', mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14]
            else:
                mem[ceil32(arg1.length) + ceil32(arg3.length) + 548] = return_data.size
                mem[ceil32(arg1.length) + ceil32(arg3.length) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14],
                                Mask(144, -256, mem[ceil32(arg1.length) + ceil32(arg3.length) + 534 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[ceil32(arg1.length) + ceil32(arg3.length) + 580]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(return_data.size) + 667 len 14]
                if not stor3[stor12]:
                    revert with 0, 
                                32,
                                44,
                                0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                mem[ceil32(arg1.length) + ceil32(arg3.length) + ceil32(return_data.size) + 661 len 20]
            ('bool', ('stor', ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor3', 3))))
            if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                stor8[stor12][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            else:
                stor8[stor12].field_0 = 0
                idx = 0
                while stor8[stor12].length + 31 / 32 > idx:
                    stor8[stor12][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    tokens[stor12].field_0 = stor12
    if arg1.length:
        tokens[stor12][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        tokens[stor12].field_256 = 0
        idx = 0
        while tokens[stor12][1].length + 31 / 32 > idx:
            tokens[stor12][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    tokens[stor12].field_512 = msg.sender
    tokens[stor12].field_768 = msg.sender
    tokens[stor12].field_1024 = 0
    tokens[stor12].field_1280 = arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 201 len 23],
                    mem[ceil32(arg4.length) + 247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x734552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 336 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 341 len 15]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 297 len 23],
                    mem[ceil32(arg4.length) + 343 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 429 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x724552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 424 len 28]
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 393 len 23],
                    mem[ceil32(arg4.length) + 439 len 9]
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
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 548] = 128
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 814 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 708 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 740 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 708 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 694 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 694 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 846 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 772 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 740 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 772]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 859 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 612] = 128
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[arg4.length + ceil32(arg4.length) + 878 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 772 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 804 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 772 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(arg4.length + 164) - 118) + -(8 * floor32(arg4.length + 164)) + 144, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 118) + (8 * floor32(arg4.length + 164)) - 144
                else:
                    mem[arg4.length + ceil32(arg4.length) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + 758 len 14],
                                    Mask(144, -256, mem[arg4.length + ceil32(arg4.length) + 758 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 891 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 910 len 26]
                if ext_code.size(arg2) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 804 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 836 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 804 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length > 0:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, (8 * floor32(floor32(arg4.length) + 196) - 118) + -(8 * floor32(floor32(arg4.length) + 196)) + 144, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 118) + (8 * floor32(floor32(arg4.length) + 196)) - 144
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14],
                                    Mask(144, -256, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 923 len 14]
}



}
