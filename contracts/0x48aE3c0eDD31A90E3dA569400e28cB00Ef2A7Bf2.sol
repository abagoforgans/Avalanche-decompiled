contract main {




// =====================  Runtime code  =====================


#
#  - mintNFT(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const imageHash = 32, 64, 0x64346532393564623066383765333432633733633965396262373465343064366536336136643263643563323766316266646330336233363432396130346139

const MAX_SUPPLY = 10000

const MAX_RESERVE = 100


mapping of uint8 stor0;
mapping of struct sub_1e1dbc57;
mapping of struct sub_0947a9eb;
mapping of uint256 pendingWithdrawals;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor7;
mapping of address approved;
mapping of uint8 stor9;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
address owner;
uint256 SALE_START_TIMESTAMP;
uint256 sub_54cf45cd;
uint256 reserved;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function sub_0947a9eb(?) {
    require calldata.size - 4 >= 32
    return bool(sub_0947a9eb[arg1].field_0), 
           sub_0947a9eb[arg1].field_256,
           sub_0947a9eb[arg1].field_512,
           sub_0947a9eb[arg1].field_768
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_1e1dbc57(?) {
    require calldata.size - 4 >= 32
    return bool(sub_1e1dbc57[arg1].field_0), 
           sub_1e1dbc57[arg1].field_256,
           sub_1e1dbc57[arg1].field_512,
           sub_1e1dbc57[arg1].field_768,
           sub_1e1dbc57[arg1].field_1024
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

function sub_54cf45cd(?) {
    return sub_54cf45cd
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor7[arg1] - 1].field_256
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

function owner() {
    return owner
}

function SALE_START_TIMESTAMP() {
    return SALE_START_TIMESTAMP
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor9[address(arg1)][address(arg2)])
}

function pendingWithdrawals(address arg1) {
    require calldata.size - 4 >= 32
    return pendingWithdrawals[arg1]
}

function reserved() {
    return reserved
}

function _fallback() payable {
    revert
}

function setSaleTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    SALE_START_TIMESTAMP = arg1
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas gas_remaining wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor9[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
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

function getNFTPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        return 0
    require arg1
    if 2 * 10^18 * arg1 / arg1 != 2 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (2 * 10^18 * arg1)
}

function changeBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length:
        baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        baseURI.length = 0
        idx = 0
        while baseURI.length + 31 / 32 > idx:
            baseURI[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_84334ebd(?) {
    require calldata.size - 4 >= 32
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    sub_1e1dbc57[arg1].field_0 = 0
    sub_1e1dbc57[arg1].field_256 = arg1
    sub_1e1dbc57[arg1].field_512 = msg.sender
    sub_1e1dbc57[arg1].field_768 = 0
    sub_1e1dbc57[arg1].field_1024 = 0
    sub_1e1dbc57[arg1].field_1280 = 0
}

function sub_c56b2801(?) {
    require calldata.size - 4 >= 64
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    sub_1e1dbc57[arg1].field_0 = 1
    sub_1e1dbc57[arg1].field_256 = arg1
    sub_1e1dbc57[arg1].field_512 = msg.sender
    sub_1e1dbc57[arg1].field_768 = arg2
    sub_1e1dbc57[arg1].field_1024 = 0
    sub_1e1dbc57[arg1].field_1280 = 0
}

function sub_bc1ea5b9(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= 10000:
        revert with 0, 'Out'
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'Invalid'
    if msg.value <= sub_0947a9eb[arg1].field_768:
        revert with 0, 'Invalid'
    if sub_0947a9eb[arg1].field_768 > 0:
        pendingWithdrawals[stor3[arg1].field_512] += sub_0947a9eb[arg1].field_768
    sub_0947a9eb[arg1].field_0 = 1
    sub_0947a9eb[arg1].field_256 = arg1
    sub_0947a9eb[arg1].field_512 = msg.sender
    sub_0947a9eb[arg1].field_768 = msg.value
}

function sub_cc0944fc(?) {
    require calldata.size - 4 >= 32
    if arg1 >= 10000:
        revert with 0, 'Out'
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 == msg.sender:
        revert with 0, 'Invalid'
    if sub_0947a9eb[arg1].field_512 != msg.sender:
        revert with 0, 'Invalid'
    sub_0947a9eb[arg1].field_0 = 0
    sub_0947a9eb[arg1].field_256 = arg1
    sub_0947a9eb[arg1].field_512 = 0
    sub_0947a9eb[arg1].field_768 = 0
    sub_0947a9eb[arg1].field_768 = 0
    call msg.sender with:
       value sub_0947a9eb[arg1].field_768 wei
         gas gas_remaining wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor7[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor7[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor7[arg2] - 1].field_256 != msg.sender:
        if not stor9[stor6[stor7[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x2e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor7[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor7[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor7[arg2] - 1].field_256, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor7[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor7[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg3] - 1].field_256 != msg.sender:
        if not stor7[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor9[stor6[stor7[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor7[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor7[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor7[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor7[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor7[arg3] - 1].field_256, 0, arg3);
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
    if stor7[arg3]:
        require stor7[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
        tokenByIndex[stor7[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor7[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 7
    if not stor7[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = baseURI.length
    mem[0] = 13
    mem[128] = uint256(baseURI.field_0)
    idx = 128
    s = 0
    while baseURI.length + 96 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[64] = ceil32(baseURI.length) + 192
        mem[ceil32(baseURI.length) + 128] = 1
        mem[ceil32(baseURI.length) + 160] = '0'
        mem[ceil32(baseURI.length) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32] or Mask(8 * -baseURI.length % 32 + 32, -(8 * -baseURI.length % 32 + 32) + 256, mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224])
        mem[baseURI.length + ceil32(baseURI.length) + 224 len 0] = None
        mem[baseURI.length + ceil32(baseURI.length) + 225] = 32
        mem[baseURI.length + ceil32(baseURI.length) + 257] = mem[ceil32(baseURI.length) + 192]
        mem[baseURI.length + ceil32(baseURI.length) + 289 len ceil32(mem[ceil32(baseURI.length) + 192])] = mem[ceil32(baseURI.length) + 224 len ceil32(mem[ceil32(baseURI.length) + 192])]
        var33001 = ceil32(mem[ceil32(baseURI.length) + 192])
        if not mem[ceil32(baseURI.length) + 192] % 32:
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 257 len mem[ceil32(baseURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + 289] = mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 192] % 32) + 321 len mem[ceil32(baseURI.length) + 192] % 32]
        return Array(len=mem[ceil32(baseURI.length) + 192], data=mem[baseURI.length + ceil32(baseURI.length) + 289 len floor32(mem[ceil32(baseURI.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(baseURI.length) + 128] = s
    mem[64] = ceil32(baseURI.length) + ceil32(s) + 160
    if s:
        mem[ceil32(baseURI.length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(baseURI.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(baseURI.length) + ceil32(s) + 192 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
    mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + -baseURI.length % 32 + 224 len baseURI.length % 32] = mem[floor32(baseURI.length) + -baseURI.length % 32 + 160 len baseURI.length % 32]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + 192 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
    mem[baseURI.length + ceil32(baseURI.length) + ceil32(s) + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[64] = s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 192
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 192] = 32
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 224] = mem[ceil32(baseURI.length) + ceil32(s) + 160]
    mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])] = mem[ceil32(baseURI.length) + ceil32(s) + 192 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])]
    if not mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32:
        return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 224 len mem[ceil32(baseURI.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 256] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + -(mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32]
    return 32, mem[s + baseURI.length + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + 64], 
}

function sub_f9856bca(?) {
    require calldata.size - 4 >= 64
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    if sub_0947a9eb[arg1].field_768 < arg2:
        revert with 0, 'Invalid'
    sub_0947a9eb[arg1].field_0 = 0
    sub_0947a9eb[arg1].field_256 = arg1
    sub_0947a9eb[arg1].field_512 = 0
    sub_0947a9eb[arg1].field_768 = 0
    sub_0947a9eb[arg1].field_768 = 0
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[553 len 23],
                    mem[599 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[685 len 23]
    if not sub_0947a9eb[arg1].field_512:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[680 len 28]
    approved[arg1] = 0
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[649 len 23],
                    mem[695 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor7[arg1] - 1].field_256, 0, arg1);
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        if not tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
            tokenOfOwnerByIndex[stor3[arg1].field_512]++
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]] = arg1
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] = tokenOfOwnerByIndex[stor3[arg1].field_512]
        if stor7[arg1]:
            require stor7[arg1] - 1 < tokenByIndex.length
            tokenByIndex[stor7[arg1] - 1].field_256 = sub_0947a9eb[arg1].field_512
            tokenByIndex[stor7[arg1] - 1].field_416 = 0
            emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
            if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                mem[1152 len 4] = 0
                mem[1124 len 0] = 0
                call sub_0947a9eb[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1124 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 800
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[950 len 14],
                                Mask(144, -256, mem[950 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1083 len 14]
        else:
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = arg1
            tokenByIndex[tokenByIndex.length].field_256 = sub_0947a9eb[arg1].field_512
            tokenByIndex[tokenByIndex.length].field_416 = 0
            stor7[arg1] = tokenByIndex.length
            emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
            if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                mem[1216 len 4] = 0
                call sub_0947a9eb[arg1].field_512.0x80 with:
                     gas gas_remaining wei
                    args 0, mem[1188 len 4]
                if not return_data.size:
                    if ext_call.success:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1014 len 14]
                    revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[1014 len 14],
                                Mask(144, -256, mem[1014 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1147 len 14]
    else:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)][1][arg1] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)][1][arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)][1][tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(msg.sender)][1][arg1]
        require tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
        tokenOfOwnerByIndex[address(msg.sender)]--
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = 0
        if tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
            if stor7[arg1]:
                require stor7[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor7[arg1] - 1].field_256 = sub_0947a9eb[arg1].field_512
                tokenByIndex[stor7[arg1] - 1].field_416 = 0
                emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
                if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                    if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    mem[1124 len 0] = 0
                    call sub_0947a9eb[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1124 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[950 len 14],
                                    Mask(144, -256, mem[950 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1083 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = sub_0947a9eb[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor7[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
                if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                    if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    call sub_0947a9eb[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[1188 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[1014 len 14]
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1014 len 14],
                                    Mask(144, -256, mem[1014 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1147 len 14]
        else:
            tokenOfOwnerByIndex[stor3[arg1].field_512]++
            tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]] = arg1
            tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] = tokenOfOwnerByIndex[stor3[arg1].field_512]
            if stor7[arg1]:
                require stor7[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor7[arg1] - 1].field_256 = sub_0947a9eb[arg1].field_512
                tokenByIndex[stor7[arg1] - 1].field_416 = 0
                emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
                if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                    if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    mem[1124 len 0] = 0
                    call sub_0947a9eb[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1124 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[950 len 14],
                                    Mask(144, -256, mem[950 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[996]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1083 len 14]
            else:
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = sub_0947a9eb[arg1].field_512
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor7[arg1] = tokenByIndex.length
                emit Transfer(msg.sender, sub_0947a9eb[arg1].field_512, arg1);
                if ext_code.size(sub_0947a9eb[arg1].field_512) > 0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
                    if ext_code.size(sub_0947a9eb[arg1].field_512) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    mem[1188 len 0] = 0
                    call sub_0947a9eb[arg1].field_512.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 1024, mem[1188 len 4]
                    if not return_data.size:
                        if ext_call.success:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0) << 800
                        revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
                    mem[1060 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[1014 len 14],
                                    Mask(144, -256, mem[1014 len 14]) << 256
                    require return_data.size >= 32
                    if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[ceil32(return_data.size) + 1147 len 14]
    pendingWithdrawals[address(msg.sender)] += 95 * sub_0947a9eb[arg1].field_768 / 100
    call owner with:
       value 5 * sub_0947a9eb[arg1].field_768 / 100 wei
         gas gas_remaining wei
    require ext_call.success
}

function reserveNFTs(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length + arg1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7345786365656473206d6178696d756d20737570706c792e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[217 len 11]
    if reserved + arg1 < reserved:
        revert with 0, 'SafeMath: addition overflow'
    if reserved + arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e45786365656473206d6178696d756d20726573657276652e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[218 len 10]
    idx = 0
    while idx < arg1:
        _383 = mem[64]
        mem[64] = mem[64] + 32
        mem[_383] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor7[stor6.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor6.length]:
            mem[0] = tokenByIndex.length
            mem[32] = 7
            if stor7[stor6.length]:
                require stor7[stor6.length] - 1 < tokenByIndex.length
                mem[0] = 6
                tokenByIndex[stor7[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor7[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _421 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_383 + s + 32]
                    s = s + 32
                    continue 
                _759 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_759 + 32] = mem[_759 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _421 + 292
                mem[_421 + 196] = 50
                mem[_421 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_421 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _804 = mem[_759]
                t = _759 + 32
                u = mem[64]
                s = mem[_759]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_759])] = mem[_759 + floor32(mem[_759]) + -(mem[_759] % 32) + 64 len mem[_759] % 32] or Mask(8 * -(mem[_759] % 32) + 32, -(8 * -(mem[_759] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_759])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _804 + _421 + -mem[64] + 288]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _1139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_421 + 196]
                    _1141 = mem[_421 + 196]
                    idx = 0
                    while idx < _1141:
                        mem[_1139 + idx + 68] = mem[_421 + idx + 228]
                        idx = idx + 32
                        continue 
                    if not _1141 % 32:
                        revert with memory
                          from mem[64]
                           len _1141 + _1139 + -mem[64] + 68
                    mem[floor32(_1141) + _1139 + 68] = mem[floor32(_1141) + _1139 + -(_1141 % 32) + 100 len _1141 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_1141) + _1139 + -mem[64] + 100
                _1115 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1115] = return_data.size
                mem[_1115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1115 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _1143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_421 + 196]
                _1145 = mem[_421 + 196]
                idx = 0
                while idx < _1145:
                    mem[_1143 + idx + 68] = mem[_421 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _1145 % 32:
                    revert with memory
                      from mem[64]
                       len _1145 + _1143 + -mem[64] + 68
                mem[floor32(_1145) + _1143 + 68] = mem[floor32(_1145) + _1143 + -(_1145 % 32) + 100 len _1145 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1145) + _1143 + -mem[64] + 100
            _395 = mem[64]
            mem[64] = mem[64] + 64
            mem[_395] = tokenByIndex.length
            mem[_395 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 7
            stor7[stor6.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _415 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_383 + s + 32]
                s = s + 32
                continue 
            _763 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_763 + 32] = mem[_763 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _415 + 292
            mem[_415 + 196] = 50
            mem[_415 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_415 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _808 = mem[_763]
            s = _763 + 32
            t = _415 + 292
            idx = mem[_763]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_415 + floor32(mem[_763]) + 292] = mem[_763 + -(mem[_763] % 32) + floor32(mem[_763]) + 64 len mem[_763] % 32] or Mask(8 * -(mem[_763] % 32) + 32, -(8 * -(mem[_763] % 32) + 32) + 256, mem[_415 + floor32(mem[_763]) + 292])
            call msg.sender.mem[_415 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_415 + 296 len _808 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_415 + 410 len 14]
                    s = 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_415 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_415 + 296] = 32
                mem[_415 + 328] = 50
                idx = 0
                while idx < 50:
                    mem[_415 + idx + 360] = mem[_415 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_415 + 392] = mem[_415 + 406 len 18]
                revert with memory
                  from mem[64]
                   len _415 + -mem[64] + 424
            mem[64] = _415 + ceil32(return_data.size) + 293
            mem[_415 + 292] = return_data.size
            mem[_415 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_415 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_415 + ceil32(return_data.size) + 411 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_415 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_415 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_415 + ceil32(return_data.size) + idx + 361] = mem[_415 + idx + 228]
                idx = idx + 32
                continue 
            mem[_415 + ceil32(return_data.size) + 393] = mem[_415 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 32, 50, mem[_415 + ceil32(return_data.size) + 361 len 64]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        tokenOfOwnerByIndex[address(msg.sender)][1][stor6.length] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenByIndex.length
        mem[32] = 7
        if stor7[stor6.length]:
            require stor7[stor6.length] - 1 < tokenByIndex.length
            mem[0] = 6
            tokenByIndex[stor7[tokenByIndex.length] - 1].field_256 = msg.sender
            tokenByIndex[stor7[tokenByIndex.length] - 1].field_416 = 0
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _424 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_383 + s + 32]
                s = s + 32
                continue 
            _767 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_767 + 32] = mem[_767 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _424 + 292
            mem[_424 + 196] = 50
            mem[_424 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_424 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _812 = mem[_767]
            t = _767 + 32
            u = _424 + 292
            s = mem[_767]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_424 + floor32(mem[_767]) + 292] = mem[_767 + -(mem[_767] % 32) + floor32(mem[_767]) + 64 len mem[_767] % 32] or Mask(8 * -(mem[_767] % 32) + 32, -(8 * -(mem[_767] % 32) + 32) + 256, mem[_424 + floor32(mem[_767]) + 292])
            call msg.sender.mem[_424 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_424 + 296 len _812 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_424 + 410 len 14]
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_424 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_424 + 296] = 32
                mem[_424 + 328] = 50
                idx = 0
                while idx < 50:
                    mem[_424 + idx + 360] = mem[_424 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_424 + 392] = mem[_424 + 406 len 18]
                revert with memory
                  from mem[64]
                   len _424 + -mem[64] + 424
            mem[64] = _424 + ceil32(return_data.size) + 293
            mem[_424 + 292] = return_data.size
            mem[_424 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_424 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_424 + ceil32(return_data.size) + 411 len 14]
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_424 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_424 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_424 + ceil32(return_data.size) + idx + 361] = mem[_424 + idx + 228]
                idx = idx + 32
                continue 
            mem[_424 + ceil32(return_data.size) + 393] = mem[_424 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 32, 50, mem[_424 + ceil32(return_data.size) + 361 len 64]
        _400 = mem[64]
        mem[64] = mem[64] + 64
        mem[_400] = tokenByIndex.length
        mem[_400 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length
        mem[32] = 7
        stor7[stor6.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if ext_code.size(msg.sender) <= 0:
            idx = idx + 1
            continue 
        _418 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_383 + s + 32]
            s = s + 32
            continue 
        _771 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_771 + 32] = mem[_771 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _418 + 292
        mem[_418 + 196] = 50
        mem[_418 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_418 + 398 len 26]
        if ext_code.size(msg.sender) <= 0:
            revert with 0, 'Address: call to non-contract'
        _816 = mem[_771]
        s = _771 + 32
        t = mem[64]
        idx = mem[_771]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_771])] = mem[_771 + floor32(mem[_771]) + -(mem[_771] % 32) + 64 len mem[_771] % 32] or Mask(8 * -(mem[_771] % 32) + 32, -(8 * -(mem[_771] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_771])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _816 + _418 + -mem[64] + 288]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _1187 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_418 + 196]
            _1189 = mem[_418 + 196]
            idx = 0
            while idx < _1189:
                mem[_1187 + idx + 68] = mem[_418 + idx + 228]
                idx = idx + 32
                continue 
            if not _1189 % 32:
                revert with memory
                  from mem[64]
                   len _1189 + _1187 + -mem[64] + 68
            mem[floor32(_1189) + _1187 + 68] = mem[floor32(_1189) + _1187 + -(_1189 % 32) + 100 len _1189 % 32]
            revert with memory
              from mem[64]
               len floor32(_1189) + _1187 + -mem[64] + 100
        _1121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1121] = return_data.size
        mem[_1121 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1121 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _1191 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_418 + 196]
        _1193 = mem[_418 + 196]
        idx = 0
        while idx < _1193:
            mem[_1191 + idx + 68] = mem[_418 + idx + 228]
            idx = idx + 32
            continue 
        if not _1193 % 32:
            revert with memory
              from mem[64]
               len _1193 + _1191 + -mem[64] + 68
        mem[floor32(_1193) + _1191 + 68] = mem[floor32(_1193) + _1191 + -(_1193 % 32) + 100 len _1193 % 32]
        revert with memory
          from mem[64]
           len floor32(_1193) + _1191 + -mem[64] + 100
    reserved += arg1
}

function buyBurger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_1e1dbc57[arg1].field_256
    mem[160] = sub_1e1dbc57[arg1].field_512
    mem[192] = sub_1e1dbc57[arg1].field_768
    mem[224] = sub_1e1dbc57[arg1].field_1024
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not sub_1e1dbc57[arg1].field_0:
        revert with 0, 'No Sale'
    if not sub_1e1dbc57[arg1].field_1024:
        if msg.value < sub_1e1dbc57[arg1].field_768:
            revert with 0, 'Insufficient amount'
        mem[256] = 41
        mem[288 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[329 len 23],
                        mem[375 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor7[arg1] - 1].field_256 != sub_1e1dbc57[arg1].field_512:
            revert with 0, 'Not seller'
        mem[352] = 0
        mem[384] = 41
        mem[416 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[457 len 23],
                        mem[503 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor7[arg1] - 1].field_256 != sub_1e1dbc57[arg1].field_512:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
        if not msg.sender:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
        approved[arg1] = 0
        mem[480] = 41
        mem[512 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[553 len 23],
                        mem[599 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor7[arg1] - 1].field_256, 0, arg1);
        if not tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]:
            if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14]
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
        else:
            require tokenOfOwnerByIndex[stor2[arg1].field_512] - 1 < tokenOfOwnerByIndex[stor2[arg1].field_512]
            require tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[arg1].field_512]
            tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]] = tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]]
            tokenOfOwnerByIndex[stor2[arg1].field_512][1][tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]]] = tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]
            require tokenOfOwnerByIndex[stor2[arg1].field_512]
            tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]] = 0
            tokenOfOwnerByIndex[stor2[arg1].field_512]--
            tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1] = 0
            if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor7[arg1]:
                require stor7[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                tokenByIndex[stor7[arg1] - 1].field_416 = 0
                emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[612] = msg.sender
                    mem[644] = sub_1e1dbc57[arg1].field_512
                    mem[676] = arg1
                    mem[708] = 128
                    mem[740] = 0
                    mem[772 len 0] = None
                    mem[576] = 164
                    mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[772] = 50
                    mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                    mem[1056 len 4] = 0
                    mem[1028 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(sub_1e1dbc57[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require bool(sub_1e1dbc57[arg1].field_0) >= 32
                        if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[854 len 14],
                                        Mask(144, -256, mem[854 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 987 len 14]
            else:
                mem[576] = arg1
                mem[608] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = arg1
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                stor7[arg1] = tokenByIndex.length
                emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender) > 0:
                    mem[676] = msg.sender
                    mem[708] = sub_1e1dbc57[arg1].field_512
                    mem[740] = arg1
                    mem[772] = 128
                    mem[804] = 0
                    mem[836 len 0] = None
                    mem[640] = 164
                    mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                    mem[836] = 50
                    mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                    mem[1120 len 4] = 0
                    mem[1092 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                revert with memory
                                  from 128
                                   len bool(sub_1e1dbc57[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require bool(sub_1e1dbc57[arg1].field_0) >= 32
                        if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[918 len 14],
                                        Mask(144, -256, mem[918 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 1051 len 14]
    else:
        if sub_1e1dbc57[arg1].field_1024 != msg.sender:
            revert with 0, 'Unable to sell'
        if msg.value < sub_1e1dbc57[arg1].field_768:
            revert with 0, 'Insufficient amount'
        mem[256] = 41
        mem[288 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[329 len 23],
                        mem[375 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor7[arg1] - 1].field_256 != sub_1e1dbc57[arg1].field_512:
            revert with 0, 'Not seller'
        mem[352] = 0
        mem[384] = 41
        mem[416 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[457 len 23],
                        mem[503 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        if tokenByIndex[stor7[arg1] - 1].field_256 != sub_1e1dbc57[arg1].field_512:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
        if not msg.sender:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
        approved[arg1] = 0
        mem[480] = 41
        mem[512 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        if not stor7[arg1]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[553 len 23],
                        mem[599 len 9]
        require stor7[arg1] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor7[arg1] - 1].field_256, 0, arg1);
        if not tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]:
            if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14]
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
        else:
            require tokenOfOwnerByIndex[stor2[arg1].field_512] - 1 < tokenOfOwnerByIndex[stor2[arg1].field_512]
            require tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1] - 1 < tokenOfOwnerByIndex[stor2[arg1].field_512]
            tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]] = tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]]
            tokenOfOwnerByIndex[stor2[arg1].field_512][1][tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]]] = tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1]
            require tokenOfOwnerByIndex[stor2[arg1].field_512]
            tokenOfOwnerByIndex[stor2[arg1].field_512][tokenOfOwnerByIndex[stor2[arg1].field_512]] = 0
            tokenOfOwnerByIndex[stor2[arg1].field_512]--
            tokenOfOwnerByIndex[stor2[arg1].field_512][1][arg1] = 0
            if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
                if stor7[arg1]:
                    require stor7[arg1] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                    tokenByIndex[stor7[arg1] - 1].field_416 = 0
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[612] = msg.sender
                        mem[644] = sub_1e1dbc57[arg1].field_512
                        mem[676] = arg1
                        mem[708] = 128
                        mem[740] = 0
                        mem[772 len 0] = None
                        mem[576] = 164
                        mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[772] = 50
                        mem[804 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14],
                                            Mask(144, -256, mem[854 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 987 len 14]
                else:
                    mem[576] = arg1
                    mem[608] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg1
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg1] = tokenByIndex.length
                    emit Transfer(sub_1e1dbc57[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender) > 0:
                        mem[676] = msg.sender
                        mem[708] = sub_1e1dbc57[arg1].field_512
                        mem[740] = arg1
                        mem[772] = 128
                        mem[804] = 0
                        mem[836 len 0] = None
                        mem[640] = 164
                        mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
                        mem[836] = 50
                        mem[868 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, sub_1e1dbc57[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if bool(sub_1e1dbc57[arg1].field_0) > 0:
                                    revert with memory
                                      from 128
                                       len bool(sub_1e1dbc57[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require bool(sub_1e1dbc57[arg1].field_0) >= 32
                            if Mask(32, 224, sub_1e1dbc57[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14]
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14],
                                            Mask(144, -256, mem[918 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
    pendingWithdrawals[stor2[arg1].field_512] += 95 * msg.value / 100
    call owner with:
       value 5 * msg.value / 100 wei
         gas gas_remaining wei
    require ext_call.success
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor7[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor7[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor7[arg3] - 1 < tokenByIndex.length
    if msg.sender == tokenByIndex[stor7[arg3] - 1].field_256:
        if not stor7[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor7[arg3] - 1 < tokenByIndex.length
        if tokenByIndex[stor7[arg3] - 1].field_256 != arg1:
            revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
        if not arg2:
            revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
        approved[arg3] = 0
        if not stor7[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[393 len 23],
                        mem[439 len 9]
        require stor7[arg3] - 1 < tokenByIndex.length
        emit Approval(tokenByIndex[stor7[arg3] - 1].field_256, 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
            if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                if stor7[arg3]:
                    require stor7[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor7[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
            else:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor7[arg3]:
                    require stor7[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor7[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                if stor7[arg3]:
                    require stor7[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor7[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
            else:
                tokenOfOwnerByIndex[address(arg2)]++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                if stor7[arg3]:
                    require stor7[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor7[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        mem[868 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
    else:
        if not stor7[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor7[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor7[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor7[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor7[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor7[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor7[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                if stor7[arg3]:
                    require stor7[arg3] - 1 < tokenByIndex.length
                    tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                    tokenByIndex[stor7[arg3] - 1].field_416 = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[694 len 14],
                                        Mask(144, -256, mem[694 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 827 len 14]
                else:
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = arg3
                    tokenByIndex[tokenByIndex.length].field_256 = arg2
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    stor7[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                        mem[960 len 4] = 0
                        mem[932 len 0] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[758 len 14],
                                        Mask(144, -256, mem[758 len 14]) << 256
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
        else:
            if not stor9[stor6[stor7[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
            if not stor7[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor7[arg3] - 1 < tokenByIndex.length
            if tokenByIndex[stor7[arg3] - 1].field_256 != arg1:
                revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
            if not arg2:
                revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
            approved[arg3] = 0
            if not stor7[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[393 len 23],
                            mem[439 len 9]
            require stor7[arg3] - 1 < tokenByIndex.length
            emit Approval(tokenByIndex[stor7[arg3] - 1].field_256, 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3]:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3]:
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
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
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
                else:
                    tokenOfOwnerByIndex[address(arg2)]++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3] = tokenOfOwnerByIndex[address(arg2)]
                    if stor7[arg3]:
                        require stor7[arg3] - 1 < tokenByIndex.length
                        tokenByIndex[stor7[arg3] - 1].field_256 = arg2
                        tokenByIndex[stor7[arg3] - 1].field_416 = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            mem[868 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[694 len 14],
                                            Mask(144, -256, mem[694 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 827 len 14]
                    else:
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = arg3
                        tokenByIndex[tokenByIndex.length].field_256 = arg2
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        stor7[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
                            mem[960 len 4] = 0
                            mem[932 len 0] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[758 len 14],
                                            Mask(144, -256, mem[758 len 14]) << 256
                            require return_data.size >= 32
                            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 891 len 14]
}



}
