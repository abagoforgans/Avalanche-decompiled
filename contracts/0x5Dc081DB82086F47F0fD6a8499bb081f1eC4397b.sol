contract main {




// =====================  Runtime code  =====================


#
#  - buyPunk(uint256 arg1)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const imageHash = 32, 64, 0x64346532393564623066383765333432633733633965396262373465343064366536336136643263643563323766316266646330336233363432396130346139

const MAX_SUPPLY = 10000

const MAX_RESERVE = 100


mapping of uint8 stor0;
mapping of struct punksOfferedForSale;
mapping of struct punkBids;
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
mapping of uint256 stor15;
uint256 SALE_START_TIMESTAMP;
uint256 punksRemainingToAssign;
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

function punksOfferedForSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(punksOfferedForSale[arg1].field_0), 
           punksOfferedForSale[arg1].field_256,
           punksOfferedForSale[arg1].field_512,
           punksOfferedForSale[arg1].field_768,
           punksOfferedForSale[arg1].field_1024
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e456e756d657261626c654d61703a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return tokenByIndex[arg1].field_0
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

function punkBids(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(punkBids[arg1].field_0), punkBids[arg1].field_256, punkBids[arg1].field_512, punkBids[arg1].field_768
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

function punksRemainingToAssign() {
    return punksRemainingToAssign
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
        revert with 0, 'eOwnable: caller is not the owne'
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
        revert with 0, 'eOwnable: caller is not the owne'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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
    if arg1:
        if 0 / arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        else:
            return 0
    else:
        return 0
}

function changeBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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

function punkNoLongerForSale(uint256 arg1) {
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    punksOfferedForSale[arg1].field_0 = 0
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = 0
    punksOfferedForSale[arg1].field_1024 = 0
}

function enterBidForPunk(uint256 arg1) payable {
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
    if msg.value <= punkBids[arg1].field_768:
        revert with 0, 'Invalid'
    if punkBids[arg1].field_768:
        pendingWithdrawals[stor3[arg1].field_512] += punkBids[arg1].field_768
    punkBids[arg1].field_0 = 1
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = msg.sender
    punkBids[arg1].field_768 = msg.value
}

function withdrawBidForPunk(uint256 arg1) {
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
    if punkBids[arg1].field_512 != msg.sender:
        revert with 0, 'Invalid'
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    call msg.sender with:
       value punkBids[arg1].field_768 wei
         gas gas_remaining wei
    require ext_call.success
}

function offerPunkForSale(uint256 arg1, uint256 arg2) {
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    punksOfferedForSale[arg1].field_0 = 1
    punksOfferedForSale[arg1].field_256 = arg1
    punksOfferedForSale[arg1].field_512 = msg.sender
    punksOfferedForSale[arg1].field_768 = arg2
    punksOfferedForSale[arg1].field_1024 = 0
    punksOfferedForSale[arg1].field_1280 = 0
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
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
        mem[ceil32(baseURI.length) + 128] = 1
        mem[ceil32(baseURI.length) + 224 len floor32(baseURI.length)] = mem[128 len floor32(baseURI.length)]
        mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(baseURI.length) + floor32(baseURI.length) + 224] or mem[floor32(baseURI.length) + 128] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(baseURI.length) + baseURI.length + 224 len 0] = None
        mem[ceil32(baseURI.length) + baseURI.length + 224 len 0] = 0
        mem[ceil32(baseURI.length) + baseURI.length + 225] = 32
        mem[ceil32(baseURI.length) + baseURI.length + 257] = mem[ceil32(baseURI.length) + 192]
        mem[ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(baseURI.length) + 192])] = mem[ceil32(baseURI.length) + 224 len ceil32(mem[ceil32(baseURI.length) + 192])]
        if not mem[ceil32(baseURI.length) + 192] % 32:
            return 32, mem[ceil32(baseURI.length) + baseURI.length + 257 len mem[ceil32(baseURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseURI.length) + 192]) + ceil32(baseURI.length) + baseURI.length + 289] = mem[floor32(mem[ceil32(baseURI.length) + 192]) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(baseURI.length) + 192] % 32) + 321 len mem[ceil32(baseURI.length) + 192] % 32]
        return Array(len=mem[ceil32(baseURI.length) + 192], data=mem[ceil32(baseURI.length) + baseURI.length + 289 len floor32(mem[ceil32(baseURI.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(baseURI.length) + 128] = s
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
    mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 192] or mem[floor32(baseURI.length) + 128] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(baseURI.length) + ceil32(s) + baseURI.length + 192 len floor32(s)] = mem[ceil32(baseURI.length) + 160 len floor32(s)]
    mem[ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(baseURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[64] = s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 192
    mem[s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 192] = 32
    mem[s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = mem[ceil32(baseURI.length) + ceil32(s) + 160]
    mem[s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])] = mem[ceil32(baseURI.length) + ceil32(s) + 192 len ceil32(mem[ceil32(baseURI.length) + ceil32(s) + 160])]
    if not mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32:
        return 32, mem[s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len mem[ceil32(baseURI.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + -(mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(baseURI.length) + ceil32(s) + 160] % 32]
    return 32, mem[s + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(mem[ceil32(baseURI.length) + ceil32(s) + 160]) + 64], 
}

function acceptBidForPunk(uint256 arg1, uint256 arg2) {
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[301 len 23]
    if arg2 > punkBids[arg1].field_768:
        revert with 0, 'Invalid'
    punkBids[arg1].field_0 = 0
    punkBids[arg1].field_256 = arg1
    punkBids[arg1].field_512 = 0
    punkBids[arg1].field_768 = 0
    punkBids[arg1].field_768 = 0
    if not stor7[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[553 len 23],
                    mem[599 len 9]
    require stor7[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor7[arg1] - 1].field_256 != msg.sender:
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[685 len 23]
    if not punkBids[arg1].field_512:
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
    if tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        require tokenOfOwnerByIndex[address(msg.sender)] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        require tokenOfOwnerByIndex[address(msg.sender)][1][arg1] - 1 < tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)][1][arg1]] = tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]
        tokenOfOwnerByIndex[address(msg.sender)][1][tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]]] = tokenOfOwnerByIndex[address(msg.sender)][1][arg1]
        require tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = 0
        tokenOfOwnerByIndex[address(msg.sender)]--
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = 0
    if not tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
        tokenOfOwnerByIndex[stor3[arg1].field_512]++
        tokenOfOwnerByIndex[stor3[arg1].field_512][tokenOfOwnerByIndex[stor3[arg1].field_512]] = arg1
        tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1] = tokenOfOwnerByIndex[stor3[arg1].field_512]
    if stor7[arg1]:
        require stor7[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor7[arg1] - 1].field_256 = punkBids[arg1].field_512
        tokenByIndex[stor7[arg1] - 1].field_416 = 0
        emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
        if ext_code.size(punkBids[arg1].field_512):
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
            if not ext_code.size(punkBids[arg1].field_512):
                revert with 0, 'Address: call to non-contract'
            mem[964 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
            mem[1152 len 4] = 0
            call punkBids[arg1].field_512.0x80 with:
                 gas gas_remaining wei
                args 0, mem[1124 len 4]
            if not return_data.size:
                if ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[950 len 14]
                revert with 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
            mem[996 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[950 len 14])
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
        tokenByIndex[tokenByIndex.length].field_256 = punkBids[arg1].field_512
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor7[arg1] = tokenByIndex.length
        emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
        if ext_code.size(punkBids[arg1].field_512):
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1134 len 26]
            if not ext_code.size(punkBids[arg1].field_512):
                revert with 0, 'Address: call to non-contract'
            mem[1028 len 160] = unknown_0x150b7a02(?????), msg.sender, msg.sender, arg1, 128, 0
            mem[1216 len 4] = 0
            call punkBids[arg1].field_512.0x80 with:
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
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[1014 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[1060]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 1147 len 14]
    pendingWithdrawals[address(msg.sender)] += 95 * punkBids[arg1].field_768 / 100
    call owner with:
       value 5 * punkBids[arg1].field_768 / 100 wei
         gas gas_remaining wei
    require ext_call.success
}

function reserveNFTs(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 + tokenByIndex.length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + tokenByIndex.length > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7345786365656473206d6178696d756d20737570706c792e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[217 len 11]
    if arg1 + reserved < reserved:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + reserved > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e45786365656473206d6178696d756d20726573657276652e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[218 len 10]
    idx = 0
    while idx < arg1:
        _445 = mem[64]
        mem[64] = mem[64] + 32
        mem[_445] = 0
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
                if not ext_code.size(msg.sender):
                    idx = idx + 1
                    continue 
                _479 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 196] = mem[s + _445 + 32]
                    s = s + 32
                    continue 
                _881 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_881 + 32] = mem[_881 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _479 + 292
                mem[_479 + 196] = 50
                mem[_479 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_479 + 398 len 26]
                if not ext_code.size(msg.sender):
                    revert with 0, 'Address: call to non-contract'
                _926 = mem[_881]
                t = _881 + 32
                u = _479 + 292
                s = mem[_881]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_479 + floor32(mem[_881]) + 292] = mem[_881 + -(mem[_881] % 32) + floor32(mem[_881]) + 64 len mem[_881] % 32] or Mask(8 * -(mem[_881] % 32) + 32, -(8 * -(mem[_881] % 32) + 32) + 256, mem[_479 + floor32(mem[_881]) + 292])
                call msg.sender.mem[_479 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_479 + 296 len _926 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_479 + 410 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_479 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_479 + 296] = 32
                    idx = 32
                    while idx < 50:
                        mem[idx + _479 + 360] = mem[idx + _479 + 228]
                        idx = idx + 32
                        continue 
                    mem[_479 + 392] = mem[_479 + 406 len 18]
                    revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_479 + 392]
                mem[64] = _479 + ceil32(return_data.size) + 293
                mem[_479 + 292] = return_data.size
                mem[_479 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_479 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_479 + ceil32(return_data.size) + 411 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_479 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_479 + ceil32(return_data.size) + 297] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _479 + ceil32(return_data.size) + 361] = mem[idx + _479 + 228]
                    idx = idx + 32
                    continue 
                mem[_479 + ceil32(return_data.size) + 393] = mem[_479 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_479 + ceil32(return_data.size) + 393]
            _457 = mem[64]
            mem[64] = mem[64] + 64
            mem[_457] = tokenByIndex.length
            mem[_457 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 7
            stor7[stor6.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _473 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _445 + 32]
                s = s + 32
                continue 
            _885 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_885 + 32] = mem[_885 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _473 + 292
            mem[_473 + 196] = 50
            mem[_473 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_473 + 398 len 26]
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _930 = mem[_885]
            s = _885 + 32
            t = _473 + 292
            idx = mem[_885]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_473 + floor32(mem[_885]) + 292] = mem[_885 + -(mem[_885] % 32) + floor32(mem[_885]) + 64 len mem[_885] % 32] or Mask(8 * -(mem[_885] % 32) + 32, -(8 * -(mem[_885] % 32) + 32) + 256, mem[_473 + floor32(mem[_885]) + 292])
            call msg.sender.mem[_473 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_473 + 296 len _930 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_473 + 410 len 14]
                    s = 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_473 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_473 + 296] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _473 + 360] = mem[idx + _473 + 228]
                    idx = idx + 32
                    continue 
                mem[_473 + 392] = mem[_473 + 406 len 18]
                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_473 + 392]
            mem[64] = _473 + ceil32(return_data.size) + 293
            mem[_473 + 292] = return_data.size
            mem[_473 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_473 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_473 + ceil32(return_data.size) + 411 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_473 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_473 + ceil32(return_data.size) + 297] = 32
            idx = 32
            while idx < 50:
                mem[idx + _473 + ceil32(return_data.size) + 361] = mem[idx + _473 + 228]
                idx = idx + 32
                continue 
            mem[_473 + ceil32(return_data.size) + 393] = mem[_473 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 
                        32,
                        50,
                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                        mem[_473 + ceil32(return_data.size) + 393]
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
            if not ext_code.size(msg.sender):
                idx = idx + 1
                continue 
            _482 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[s + mem[64] + 196] = mem[s + _445 + 32]
                s = s + 32
                continue 
            _889 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_889 + 32] = mem[_889 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _482 + 292
            mem[_482 + 196] = 50
            mem[_482 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_482 + 398 len 26]
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            _934 = mem[_889]
            t = _889 + 32
            u = _482 + 292
            s = mem[_889]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_482 + floor32(mem[_889]) + 292] = mem[_889 + -(mem[_889] % 32) + floor32(mem[_889]) + 64 len mem[_889] % 32] or Mask(8 * -(mem[_889] % 32) + 32, -(8 * -(mem[_889] % 32) + 32) + 256, mem[_482 + floor32(mem[_889]) + 292])
            call msg.sender.mem[_482 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_482 + 296 len _934 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_482 + 410 len 14]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_482 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_482 + 296] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _482 + 360] = mem[idx + _482 + 228]
                    idx = idx + 32
                    continue 
                mem[_482 + 392] = mem[_482 + 406 len 18]
                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_482 + 392]
            mem[64] = _482 + ceil32(return_data.size) + 293
            mem[_482 + 292] = return_data.size
            mem[_482 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_482 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_482 + ceil32(return_data.size) + 411 len 14]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_482 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_482 + ceil32(return_data.size) + 297] = 32
            idx = 32
            while idx < 50:
                mem[idx + _482 + ceil32(return_data.size) + 361] = mem[idx + _482 + 228]
                idx = idx + 32
                continue 
            mem[_482 + ceil32(return_data.size) + 393] = mem[_482 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 
                        32,
                        50,
                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                        mem[_482 + ceil32(return_data.size) + 393]
        _462 = mem[64]
        mem[64] = mem[64] + 64
        mem[_462] = tokenByIndex.length
        mem[_462 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length
        mem[32] = 7
        stor7[stor6.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if not ext_code.size(msg.sender):
            idx = idx + 1
            continue 
        _476 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[s + mem[64] + 196] = mem[s + _445 + 32]
            s = s + 32
            continue 
        _893 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_893 + 32] = mem[_893 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _476 + 292
        mem[_476 + 196] = 50
        mem[_476 + 228 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_476 + 398 len 26]
        if not ext_code.size(msg.sender):
            revert with 0, 'Address: call to non-contract'
        _938 = mem[_893]
        s = _893 + 32
        t = _476 + 292
        idx = mem[_893]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[_476 + floor32(mem[_893]) + 292] = mem[_893 + -(mem[_893] % 32) + floor32(mem[_893]) + 64 len mem[_893] % 32] or Mask(8 * -(mem[_893] % 32) + 32, -(8 * -(mem[_893] % 32) + 32) + 256, mem[_476 + floor32(mem[_893]) + 292])
        call msg.sender.mem[_476 + 292 len 4] with:
             gas gas_remaining wei
            args mem[_476 + 296 len _938 - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_476 + 410 len 14]
                s = 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            mem[_476 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_476 + 296] = 32
            idx = 32
            while idx < 50:
                mem[idx + _476 + 360] = mem[idx + _476 + 228]
                idx = idx + 32
                continue 
            mem[_476 + 392] = mem[_476 + 406 len 18]
            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_476 + 392]
        mem[64] = _476 + ceil32(return_data.size) + 293
        mem[_476 + 292] = return_data.size
        mem[_476 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_476 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[_476 + ceil32(return_data.size) + 411 len 14]
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_476 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_476 + ceil32(return_data.size) + 297] = 32
        idx = 32
        while idx < 50:
            mem[idx + _476 + ceil32(return_data.size) + 361] = mem[idx + _476 + 228]
            idx = idx + 32
            continue 
        mem[_476 + ceil32(return_data.size) + 393] = mem[_476 + ceil32(return_data.size) + 407 len 18]
        revert with 0, 
                    32,
                    50,
                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                    mem[_476 + ceil32(return_data.size) + 393]
    reserved += arg1
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
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                    mem[896 len 4] = 0
                    call arg2.0x80 with:
                         gas gas_remaining wei
                        args 0, mem[868 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                    mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                    mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if not ext_code.size(arg2):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                            mem[896 len 4] = 0
                            call arg2.0x80 with:
                                 gas gas_remaining wei
                                args 0, mem[868 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
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
                    if ext_code.size(arg2):
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[708 len 160] = unknown_0x150b7a02(?????), msg.sender, address(arg1), arg3, 128, 0
                        mem[896 len 4] = 0
                        call arg2.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[868 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
                        mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
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
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
                        require return_data.size >= 32
                        if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[ceil32(return_data.size) + 891 len 14]
}

function mintNFT(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if arg1 <= 0:
        revert with 0, 'You cannot mint 0 Nfts.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e596f752063616e6e6f74206d696e74206d6f7265207468616e203230204e66747320706572206f6e63,
                    mem[206 len 22]
    if arg1 + tokenByIndex.length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + tokenByIndex.length > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7345786365656473206d6178696d756d20737570706c792e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[217 len 11]
    if tokenByIndex.length >= 10000:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        if msg.value != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x73416d6f756e74206f662045746865722073656e74206973206e6f7420636f7272656374,
                        mem[200 len 28]
        call owner with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            require ext_call.success
            idx = 0
            while idx < arg1:
                _7063 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _7064 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _7066 = sha3(mem[_7064 + 32 len mem[_7064]])
                require block.timestamp
                mem[_7063 + 84] = address(block.coinbase)
                mem[_7063 + 52] = 20
                mem[_7063 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number
                mem[_7063 + 104] = 32
                require punksRemainingToAssign
                punksRemainingToAssign--
                stor15[stor17 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
                if not stor15[stor17 - 1]:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7063 + 200
                        mem[_7063 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7063 + 236] = msg.sender
                            mem[_7063 + 268] = 0
                            mem[_7063 + 300] = stor15[stor17 - 1]
                            mem[_7063 + 332] = 128
                            mem[_7063 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7063 + 396] = mem[s + _7063 + 200]
                                s = s + 32
                                continue 
                            mem[_7063 + 200] = 164
                            mem[_7063 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7063 + 492
                            mem[_7063 + 396] = 50
                            mem[_7063 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7063 + 232
                            u = _7063 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7063 + 652] = 0 or Mask(224, 32, mem[_7063 + 652])
                            call msg.sender.mem[_7063 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7063 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7063 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7063 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7063 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7063 + 560] = mem[idx + _7063 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7063 + 592] = mem[_7063 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 592]
                            mem[64] = _7063 + ceil32(return_data.size) + 493
                            mem[_7063 + 492] = return_data.size
                            mem[_7063 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7063 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7063 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + ceil32(return_data.size) + 561] = mem[idx + _7063 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7063 + ceil32(return_data.size) + 593] = mem[_7063 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7063 + ceil32(return_data.size) + 593]
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7063 + 200
                        mem[_7063 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7063 + 236] = msg.sender
                            mem[_7063 + 268] = 0
                            mem[_7063 + 300] = stor15[stor17 - 1]
                            mem[_7063 + 332] = 128
                            mem[_7063 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7063 + 396] = mem[s + _7063 + 200]
                                s = s + 32
                                continue 
                            mem[_7063 + 200] = 164
                            mem[_7063 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7063 + 492
                            mem[_7063 + 396] = 50
                            mem[_7063 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7063 + 232
                            t = _7063 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7063 + 652] = 0 or Mask(224, 32, mem[_7063 + 652])
                            call msg.sender.mem[_7063 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7063 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7063 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7063 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7063 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7063 + 560] = mem[idx + _7063 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7063 + 592] = mem[_7063 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 592]
                            mem[64] = _7063 + ceil32(return_data.size) + 493
                            mem[_7063 + 492] = return_data.size
                            mem[_7063 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7063 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7063 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + ceil32(return_data.size) + 561] = mem[idx + _7063 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7063 + ceil32(return_data.size) + 593] = mem[_7063 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7063 + ceil32(return_data.size) + 593]
                    ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor17', 17))), ('name', 'stor15', 15))), ('name', 'stor7', 7))))
                    mem[64] = _7063 + 264
                    mem[_7063 + 200] = stor15[stor17 - 1]
                    mem[_7063 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor15[stor17 - 1]
                    mem[32] = 7
                    stor7[stor15[stor17 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    mem[_7063 + 300] = msg.sender
                    mem[_7063 + 332] = 0
                    mem[_7063 + 364] = stor15[stor17 - 1]
                    mem[_7063 + 396] = 128
                    mem[_7063 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[s + _7063 + 460] = mem[s + _7063 + 200]
                        s = s + 32
                        continue 
                    mem[_7063 + 264] = 164
                    mem[_7063 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _7063 + 556
                    mem[_7063 + 460] = 50
                    mem[_7063 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 662 len 26]
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    t = _7063 + 296
                    u = _7063 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_7063 + 716] = 0 or Mask(224, 32, mem[_7063 + 716])
                    call msg.sender.mem[_7063 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_7063 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7063 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_7063 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7063 + 560] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _7063 + 624] = mem[idx + _7063 + 492]
                            idx = idx + 32
                            continue 
                        mem[_7063 + 656] = mem[_7063 + 670 len 18]
                        revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 656]
                    mem[64] = _7063 + ceil32(return_data.size) + 557
                    mem[_7063 + 556] = return_data.size
                    mem[_7063 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_7063 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_7063 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7063 + 200
                        mem[_7063 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7063 + 236] = msg.sender
                            mem[_7063 + 268] = 0
                            mem[_7063 + 300] = stor15[stor17 - 1]
                            mem[_7063 + 332] = 128
                            mem[_7063 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7063 + 396] = mem[s + _7063 + 200]
                                s = s + 32
                                continue 
                            mem[_7063 + 200] = 164
                            mem[_7063 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7063 + 492
                            mem[_7063 + 396] = 50
                            mem[_7063 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7063 + 232
                            t = _7063 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7063 + 652] = 0 or Mask(224, 32, mem[_7063 + 652])
                            call msg.sender.mem[_7063 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7063 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7063 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7063 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7063 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7063 + 560] = mem[idx + _7063 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7063 + 592] = mem[_7063 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 592]
                            mem[64] = _7063 + ceil32(return_data.size) + 493
                            mem[_7063 + 492] = return_data.size
                            mem[_7063 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7063 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7063 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + ceil32(return_data.size) + 561] = mem[idx + _7063 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7063 + ceil32(return_data.size) + 593] = mem[_7063 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7063 + ceil32(return_data.size) + 593]
                        mem[64] = _7063 + 264
                        mem[_7063 + 200] = stor15[stor17 - 1]
                        mem[_7063 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7063 + 300] = msg.sender
                        mem[_7063 + 332] = 0
                        mem[_7063 + 364] = stor15[stor17 - 1]
                        mem[_7063 + 396] = 128
                        mem[_7063 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7063 + 460] = mem[s + _7063 + 200]
                            s = s + 32
                            continue 
                        mem[_7063 + 264] = 164
                        mem[_7063 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7063 + 556
                        mem[_7063 + 460] = 50
                        mem[_7063 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        t = _7063 + 296
                        u = _7063 + 556
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_7063 + 716] = 0 or Mask(224, 32, mem[_7063 + 716])
                        call msg.sender.mem[_7063 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7063 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + 674 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7063 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + 624] = mem[idx + _7063 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7063 + 656] = mem[_7063 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 656]
                        mem[64] = _7063 + ceil32(return_data.size) + 557
                        mem[_7063 + 556] = return_data.size
                        mem[_7063 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7063 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7063 + ceil32(return_data.size) + 675 len 14]
                            idx = idx + 1
                            continue 
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7066 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7063 + 200
                        mem[_7063 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7063 + 236] = msg.sender
                            mem[_7063 + 268] = 0
                            mem[_7063 + 300] = stor15[stor17 - 1]
                            mem[_7063 + 332] = 128
                            mem[_7063 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7063 + 396] = mem[s + _7063 + 200]
                                s = s + 32
                                continue 
                            mem[_7063 + 200] = 164
                            mem[_7063 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7063 + 492
                            mem[_7063 + 396] = 50
                            mem[_7063 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7063 + 232
                            u = _7063 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7063 + 652] = 0 or Mask(224, 32, mem[_7063 + 652])
                            call msg.sender.mem[_7063 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7063 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7063 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7063 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7063 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7063 + 560] = mem[idx + _7063 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7063 + 592] = mem[_7063 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 592]
                            mem[64] = _7063 + ceil32(return_data.size) + 493
                            mem[_7063 + 492] = return_data.size
                            mem[_7063 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7063 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7063 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + ceil32(return_data.size) + 561] = mem[idx + _7063 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7063 + ceil32(return_data.size) + 593] = mem[_7063 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7063 + ceil32(return_data.size) + 593]
                        mem[64] = _7063 + 264
                        mem[_7063 + 200] = stor15[stor17 - 1]
                        mem[_7063 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7063 + 300] = msg.sender
                        mem[_7063 + 332] = 0
                        mem[_7063 + 364] = stor15[stor17 - 1]
                        mem[_7063 + 396] = 128
                        mem[_7063 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7063 + 460] = mem[s + _7063 + 200]
                            s = s + 32
                            continue 
                        mem[_7063 + 264] = 164
                        mem[_7063 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7063 + 556
                        mem[_7063 + 460] = 50
                        mem[_7063 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7063 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        s = _7063 + 296
                        t = _7063 + 556
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_7063 + 716] = 0 or Mask(224, 32, mem[_7063 + 716])
                        call msg.sender.mem[_7063 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7063 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7063 + 674 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7063 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7063 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7063 + 624] = mem[idx + _7063 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7063 + 656] = mem[_7063 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7063 + 656]
                        mem[64] = _7063 + ceil32(return_data.size) + 557
                        mem[_7063 + 556] = return_data.size
                        mem[_7063 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7063 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7063 + ceil32(return_data.size) + 675 len 14]
                            s = 1
                            continue 
                ('iszero', 'ext_call.success')
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7063 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_7063 + ceil32(return_data.size) + 561] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _7063 + ceil32(return_data.size) + 625] = mem[idx + _7063 + 492]
                    idx = idx + 32
                    continue 
                mem[_7063 + ceil32(return_data.size) + 657] = mem[_7063 + ceil32(return_data.size) + 671 len 18]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_7063 + ceil32(return_data.size) + 657]
        else:
            mem[64] = ceil32(return_data.size) + 97
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            idx = 0
            while idx < arg1:
                _7067 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _7068 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _7070 = sha3(mem[_7068 + 32 len mem[_7068]])
                require block.timestamp
                mem[_7067 + 84] = address(block.coinbase)
                mem[_7067 + 52] = 20
                mem[_7067 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number
                mem[_7067 + 104] = 32
                require punksRemainingToAssign
                punksRemainingToAssign--
                stor15[stor17 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
                if not stor15[stor17 - 1]:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7067 + 200
                        mem[_7067 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7067 + 236] = msg.sender
                            mem[_7067 + 268] = 0
                            mem[_7067 + 300] = stor15[stor17 - 1]
                            mem[_7067 + 332] = 128
                            mem[_7067 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7067 + 396] = mem[s + _7067 + 200]
                                s = s + 32
                                continue 
                            mem[_7067 + 200] = 164
                            mem[_7067 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7067 + 492
                            mem[_7067 + 396] = 50
                            mem[_7067 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7067 + 232
                            u = _7067 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7067 + 652] = 0 or Mask(224, 32, mem[_7067 + 652])
                            call msg.sender.mem[_7067 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7067 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7067 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7067 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7067 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7067 + 560] = mem[idx + _7067 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7067 + 592] = mem[_7067 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 592]
                            mem[64] = _7067 + ceil32(return_data.size) + 493
                            mem[_7067 + 492] = return_data.size
                            mem[_7067 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7067 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7067 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + ceil32(return_data.size) + 561] = mem[idx + _7067 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7067 + ceil32(return_data.size) + 593] = mem[_7067 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7067 + ceil32(return_data.size) + 593]
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7067 + 200
                        mem[_7067 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7067 + 236] = msg.sender
                            mem[_7067 + 268] = 0
                            mem[_7067 + 300] = stor15[stor17 - 1]
                            mem[_7067 + 332] = 128
                            mem[_7067 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7067 + 396] = mem[s + _7067 + 200]
                                s = s + 32
                                continue 
                            mem[_7067 + 200] = 164
                            mem[_7067 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7067 + 492
                            mem[_7067 + 396] = 50
                            mem[_7067 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7067 + 232
                            t = _7067 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7067 + 652] = 0 or Mask(224, 32, mem[_7067 + 652])
                            call msg.sender.mem[_7067 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7067 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7067 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7067 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7067 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7067 + 560] = mem[idx + _7067 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7067 + 592] = mem[_7067 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 592]
                            mem[64] = _7067 + ceil32(return_data.size) + 493
                            mem[_7067 + 492] = return_data.size
                            mem[_7067 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7067 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7067 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + ceil32(return_data.size) + 561] = mem[idx + _7067 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7067 + ceil32(return_data.size) + 593] = mem[_7067 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7067 + ceil32(return_data.size) + 593]
                    ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor17', 17))), ('name', 'stor15', 15))), ('name', 'stor7', 7))))
                    mem[64] = _7067 + 264
                    mem[_7067 + 200] = stor15[stor17 - 1]
                    mem[_7067 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor15[stor17 - 1]
                    mem[32] = 7
                    stor7[stor15[stor17 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    mem[_7067 + 300] = msg.sender
                    mem[_7067 + 332] = 0
                    mem[_7067 + 364] = stor15[stor17 - 1]
                    mem[_7067 + 396] = 128
                    mem[_7067 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[s + _7067 + 460] = mem[s + _7067 + 200]
                        s = s + 32
                        continue 
                    mem[_7067 + 264] = 164
                    mem[_7067 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _7067 + 556
                    mem[_7067 + 460] = 50
                    mem[_7067 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 662 len 26]
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    t = _7067 + 296
                    u = _7067 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_7067 + 716] = 0 or Mask(224, 32, mem[_7067 + 716])
                    call msg.sender.mem[_7067 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_7067 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7067 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_7067 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7067 + 560] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _7067 + 624] = mem[idx + _7067 + 492]
                            idx = idx + 32
                            continue 
                        mem[_7067 + 656] = mem[_7067 + 670 len 18]
                        revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 656]
                    mem[64] = _7067 + ceil32(return_data.size) + 557
                    mem[_7067 + 556] = return_data.size
                    mem[_7067 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_7067 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_7067 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7067 + 200
                        mem[_7067 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7067 + 236] = msg.sender
                            mem[_7067 + 268] = 0
                            mem[_7067 + 300] = stor15[stor17 - 1]
                            mem[_7067 + 332] = 128
                            mem[_7067 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7067 + 396] = mem[s + _7067 + 200]
                                s = s + 32
                                continue 
                            mem[_7067 + 200] = 164
                            mem[_7067 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7067 + 492
                            mem[_7067 + 396] = 50
                            mem[_7067 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7067 + 232
                            t = _7067 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7067 + 652] = 0 or Mask(224, 32, mem[_7067 + 652])
                            call msg.sender.mem[_7067 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7067 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7067 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7067 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7067 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7067 + 560] = mem[idx + _7067 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7067 + 592] = mem[_7067 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 592]
                            mem[64] = _7067 + ceil32(return_data.size) + 493
                            mem[_7067 + 492] = return_data.size
                            mem[_7067 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7067 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7067 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + ceil32(return_data.size) + 561] = mem[idx + _7067 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7067 + ceil32(return_data.size) + 593] = mem[_7067 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7067 + ceil32(return_data.size) + 593]
                        mem[64] = _7067 + 264
                        mem[_7067 + 200] = stor15[stor17 - 1]
                        mem[_7067 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7067 + 300] = msg.sender
                        mem[_7067 + 332] = 0
                        mem[_7067 + 364] = stor15[stor17 - 1]
                        mem[_7067 + 396] = 128
                        mem[_7067 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7067 + 460] = mem[s + _7067 + 200]
                            s = s + 32
                            continue 
                        mem[_7067 + 264] = 164
                        mem[_7067 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7067 + 556
                        mem[_7067 + 460] = 50
                        mem[_7067 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        t = _7067 + 296
                        u = _7067 + 556
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_7067 + 716] = 0 or Mask(224, 32, mem[_7067 + 716])
                        call msg.sender.mem[_7067 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7067 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + 674 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7067 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + 624] = mem[idx + _7067 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7067 + 656] = mem[_7067 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 656]
                        mem[64] = _7067 + ceil32(return_data.size) + 557
                        mem[_7067 + 556] = return_data.size
                        mem[_7067 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7067 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7067 + ceil32(return_data.size) + 675 len 14]
                            idx = idx + 1
                            continue 
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7070 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7067 + 200
                        mem[_7067 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7067 + 236] = msg.sender
                            mem[_7067 + 268] = 0
                            mem[_7067 + 300] = stor15[stor17 - 1]
                            mem[_7067 + 332] = 128
                            mem[_7067 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7067 + 396] = mem[s + _7067 + 200]
                                s = s + 32
                                continue 
                            mem[_7067 + 200] = 164
                            mem[_7067 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7067 + 492
                            mem[_7067 + 396] = 50
                            mem[_7067 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7067 + 232
                            u = _7067 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7067 + 652] = 0 or Mask(224, 32, mem[_7067 + 652])
                            call msg.sender.mem[_7067 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7067 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7067 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7067 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7067 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7067 + 560] = mem[idx + _7067 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7067 + 592] = mem[_7067 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 592]
                            mem[64] = _7067 + ceil32(return_data.size) + 493
                            mem[_7067 + 492] = return_data.size
                            mem[_7067 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7067 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7067 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + ceil32(return_data.size) + 561] = mem[idx + _7067 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7067 + ceil32(return_data.size) + 593] = mem[_7067 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7067 + ceil32(return_data.size) + 593]
                        mem[64] = _7067 + 264
                        mem[_7067 + 200] = stor15[stor17 - 1]
                        mem[_7067 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7067 + 300] = msg.sender
                        mem[_7067 + 332] = 0
                        mem[_7067 + 364] = stor15[stor17 - 1]
                        mem[_7067 + 396] = 128
                        mem[_7067 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7067 + 460] = mem[s + _7067 + 200]
                            s = s + 32
                            continue 
                        mem[_7067 + 264] = 164
                        mem[_7067 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7067 + 556
                        mem[_7067 + 460] = 50
                        mem[_7067 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7067 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        s = _7067 + 296
                        t = _7067 + 556
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_7067 + 716] = 0 or Mask(224, 32, mem[_7067 + 716])
                        call msg.sender.mem[_7067 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7067 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7067 + 674 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7067 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7067 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7067 + 624] = mem[idx + _7067 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7067 + 656] = mem[_7067 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7067 + 656]
                        mem[64] = _7067 + ceil32(return_data.size) + 557
                        mem[_7067 + 556] = return_data.size
                        mem[_7067 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7067 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7067 + ceil32(return_data.size) + 675 len 14]
                            s = 1
                            continue 
                ('iszero', 'ext_call.success')
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7067 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_7067 + ceil32(return_data.size) + 561] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _7067 + ceil32(return_data.size) + 625] = mem[idx + _7067 + 492]
                    idx = idx + 32
                    continue 
                mem[_7067 + ceil32(return_data.size) + 657] = mem[_7067 + ceil32(return_data.size) + 671 len 18]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_7067 + ceil32(return_data.size) + 657]
    else:
        if 0 / arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x73416d6f756e74206f662045746865722073656e74206973206e6f7420636f7272656374,
                        mem[200 len 28]
        call owner with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            require ext_call.success
            idx = 0
            while idx < arg1:
                _7055 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _7056 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _7058 = sha3(mem[_7056 + 32 len mem[_7056]])
                require block.timestamp
                mem[_7055 + 84] = address(block.coinbase)
                mem[_7055 + 52] = 20
                mem[_7055 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number
                mem[_7055 + 104] = 32
                require punksRemainingToAssign
                punksRemainingToAssign--
                stor15[stor17 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
                if not stor15[stor17 - 1]:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7055 + 200
                        mem[_7055 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7055 + 236] = msg.sender
                            mem[_7055 + 268] = 0
                            mem[_7055 + 300] = stor15[stor17 - 1]
                            mem[_7055 + 332] = 128
                            mem[_7055 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7055 + 396] = mem[s + _7055 + 200]
                                s = s + 32
                                continue 
                            mem[_7055 + 200] = 164
                            mem[_7055 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7055 + 492
                            mem[_7055 + 396] = 50
                            mem[_7055 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7055 + 232
                            u = _7055 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7055 + 652] = 0 or Mask(224, 32, mem[_7055 + 652])
                            call msg.sender.mem[_7055 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7055 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7055 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7055 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7055 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7055 + 560] = mem[idx + _7055 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7055 + 592] = mem[_7055 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 592]
                            mem[64] = _7055 + ceil32(return_data.size) + 493
                            mem[_7055 + 492] = return_data.size
                            mem[_7055 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7055 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7055 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + ceil32(return_data.size) + 561] = mem[idx + _7055 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7055 + ceil32(return_data.size) + 593] = mem[_7055 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7055 + ceil32(return_data.size) + 593]
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7055 + 200
                        mem[_7055 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7055 + 236] = msg.sender
                            mem[_7055 + 268] = 0
                            mem[_7055 + 300] = stor15[stor17 - 1]
                            mem[_7055 + 332] = 128
                            mem[_7055 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7055 + 396] = mem[s + _7055 + 200]
                                s = s + 32
                                continue 
                            mem[_7055 + 200] = 164
                            mem[_7055 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7055 + 492
                            mem[_7055 + 396] = 50
                            mem[_7055 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7055 + 232
                            t = _7055 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7055 + 652] = 0 or Mask(224, 32, mem[_7055 + 652])
                            call msg.sender.mem[_7055 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7055 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7055 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7055 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7055 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7055 + 560] = mem[idx + _7055 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7055 + 592] = mem[_7055 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 592]
                            mem[64] = _7055 + ceil32(return_data.size) + 493
                            mem[_7055 + 492] = return_data.size
                            mem[_7055 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7055 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7055 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + ceil32(return_data.size) + 561] = mem[idx + _7055 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7055 + ceil32(return_data.size) + 593] = mem[_7055 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7055 + ceil32(return_data.size) + 593]
                    ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor17', 17))), ('name', 'stor15', 15))), ('name', 'stor7', 7))))
                    mem[64] = _7055 + 264
                    mem[_7055 + 200] = stor15[stor17 - 1]
                    mem[_7055 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor15[stor17 - 1]
                    mem[32] = 7
                    stor7[stor15[stor17 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    mem[_7055 + 300] = msg.sender
                    mem[_7055 + 332] = 0
                    mem[_7055 + 364] = stor15[stor17 - 1]
                    mem[_7055 + 396] = 128
                    mem[_7055 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[s + _7055 + 460] = mem[s + _7055 + 200]
                        s = s + 32
                        continue 
                    mem[_7055 + 264] = 164
                    mem[_7055 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _7055 + 556
                    mem[_7055 + 460] = 50
                    mem[_7055 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 662 len 26]
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    t = _7055 + 296
                    u = _7055 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_7055 + 716] = 0 or Mask(224, 32, mem[_7055 + 716])
                    call msg.sender.mem[_7055 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_7055 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7055 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_7055 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7055 + 560] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _7055 + 624] = mem[idx + _7055 + 492]
                            idx = idx + 32
                            continue 
                        mem[_7055 + 656] = mem[_7055 + 670 len 18]
                        revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 656]
                    mem[64] = _7055 + ceil32(return_data.size) + 557
                    mem[_7055 + 556] = return_data.size
                    mem[_7055 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_7055 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_7055 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7055 + 200
                        mem[_7055 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7055 + 236] = msg.sender
                            mem[_7055 + 268] = 0
                            mem[_7055 + 300] = stor15[stor17 - 1]
                            mem[_7055 + 332] = 128
                            mem[_7055 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7055 + 396] = mem[s + _7055 + 200]
                                s = s + 32
                                continue 
                            mem[_7055 + 200] = 164
                            mem[_7055 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7055 + 492
                            mem[_7055 + 396] = 50
                            mem[_7055 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7055 + 232
                            t = _7055 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7055 + 652] = 0 or Mask(224, 32, mem[_7055 + 652])
                            call msg.sender.mem[_7055 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7055 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7055 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7055 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7055 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7055 + 560] = mem[idx + _7055 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7055 + 592] = mem[_7055 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 592]
                            mem[64] = _7055 + ceil32(return_data.size) + 493
                            mem[_7055 + 492] = return_data.size
                            mem[_7055 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7055 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7055 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + ceil32(return_data.size) + 561] = mem[idx + _7055 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7055 + ceil32(return_data.size) + 593] = mem[_7055 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7055 + ceil32(return_data.size) + 593]
                        mem[64] = _7055 + 264
                        mem[_7055 + 200] = stor15[stor17 - 1]
                        mem[_7055 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7055 + 300] = msg.sender
                        mem[_7055 + 332] = 0
                        mem[_7055 + 364] = stor15[stor17 - 1]
                        mem[_7055 + 396] = 128
                        mem[_7055 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7055 + 460] = mem[s + _7055 + 200]
                            s = s + 32
                            continue 
                        mem[_7055 + 264] = 164
                        mem[_7055 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7055 + 556
                        mem[_7055 + 460] = 50
                        mem[_7055 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        t = _7055 + 296
                        u = _7055 + 556
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_7055 + 716] = 0 or Mask(224, 32, mem[_7055 + 716])
                        call msg.sender.mem[_7055 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7055 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + 674 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7055 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + 624] = mem[idx + _7055 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7055 + 656] = mem[_7055 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 656]
                        mem[64] = _7055 + ceil32(return_data.size) + 557
                        mem[_7055 + 556] = return_data.size
                        mem[_7055 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7055 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7055 + ceil32(return_data.size) + 675 len 14]
                            idx = idx + 1
                            continue 
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7058 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7055 + 200
                        mem[_7055 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7055 + 236] = msg.sender
                            mem[_7055 + 268] = 0
                            mem[_7055 + 300] = stor15[stor17 - 1]
                            mem[_7055 + 332] = 128
                            mem[_7055 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7055 + 396] = mem[s + _7055 + 200]
                                s = s + 32
                                continue 
                            mem[_7055 + 200] = 164
                            mem[_7055 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7055 + 492
                            mem[_7055 + 396] = 50
                            mem[_7055 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7055 + 232
                            u = _7055 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7055 + 652] = 0 or Mask(224, 32, mem[_7055 + 652])
                            call msg.sender.mem[_7055 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7055 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7055 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7055 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7055 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7055 + 560] = mem[idx + _7055 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7055 + 592] = mem[_7055 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 592]
                            mem[64] = _7055 + ceil32(return_data.size) + 493
                            mem[_7055 + 492] = return_data.size
                            mem[_7055 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7055 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7055 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + ceil32(return_data.size) + 561] = mem[idx + _7055 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7055 + ceil32(return_data.size) + 593] = mem[_7055 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7055 + ceil32(return_data.size) + 593]
                        mem[64] = _7055 + 264
                        mem[_7055 + 200] = stor15[stor17 - 1]
                        mem[_7055 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7055 + 300] = msg.sender
                        mem[_7055 + 332] = 0
                        mem[_7055 + 364] = stor15[stor17 - 1]
                        mem[_7055 + 396] = 128
                        mem[_7055 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7055 + 460] = mem[s + _7055 + 200]
                            s = s + 32
                            continue 
                        mem[_7055 + 264] = 164
                        mem[_7055 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7055 + 556
                        mem[_7055 + 460] = 50
                        mem[_7055 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7055 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        s = _7055 + 296
                        t = _7055 + 556
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_7055 + 716] = 0 or Mask(224, 32, mem[_7055 + 716])
                        call msg.sender.mem[_7055 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7055 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7055 + 674 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7055 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7055 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7055 + 624] = mem[idx + _7055 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7055 + 656] = mem[_7055 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7055 + 656]
                        mem[64] = _7055 + ceil32(return_data.size) + 557
                        mem[_7055 + 556] = return_data.size
                        mem[_7055 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7055 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7055 + ceil32(return_data.size) + 675 len 14]
                            s = 1
                            continue 
                ('iszero', 'ext_call.success')
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7055 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_7055 + ceil32(return_data.size) + 561] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _7055 + ceil32(return_data.size) + 625] = mem[idx + _7055 + 492]
                    idx = idx + 32
                    continue 
                mem[_7055 + ceil32(return_data.size) + 657] = mem[_7055 + ceil32(return_data.size) + 671 len 18]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_7055 + ceil32(return_data.size) + 657]
        else:
            mem[64] = ceil32(return_data.size) + 97
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            idx = 0
            while idx < arg1:
                _7059 = mem[64]
                mem[mem[64] + 32] = address(msg.sender)
                _7060 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _7062 = sha3(mem[_7060 + 32 len mem[_7060]])
                require block.timestamp
                mem[_7059 + 84] = address(block.coinbase)
                mem[_7059 + 52] = 20
                mem[_7059 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number
                mem[_7059 + 104] = 32
                require punksRemainingToAssign
                punksRemainingToAssign--
                stor15[stor17 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / punksRemainingToAssign % punksRemainingToAssign
                if not stor15[stor17 - 1]:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7059 + 200
                        mem[_7059 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7059 + 236] = msg.sender
                            mem[_7059 + 268] = 0
                            mem[_7059 + 300] = stor15[stor17 - 1]
                            mem[_7059 + 332] = 128
                            mem[_7059 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7059 + 396] = mem[s + _7059 + 200]
                                s = s + 32
                                continue 
                            mem[_7059 + 200] = 164
                            mem[_7059 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7059 + 492
                            mem[_7059 + 396] = 50
                            mem[_7059 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7059 + 232
                            u = _7059 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7059 + 652] = 0 or Mask(224, 32, mem[_7059 + 652])
                            call msg.sender.mem[_7059 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7059 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7059 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7059 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7059 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7059 + 560] = mem[idx + _7059 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7059 + 592] = mem[_7059 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 592]
                            mem[64] = _7059 + ceil32(return_data.size) + 493
                            mem[_7059 + 492] = return_data.size
                            mem[_7059 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7059 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7059 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + ceil32(return_data.size) + 561] = mem[idx + _7059 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7059 + ceil32(return_data.size) + 593] = mem[_7059 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7059 + ceil32(return_data.size) + 593]
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17] = punksRemainingToAssign - 1
                        mem[64] = _7059 + 200
                        mem[_7059 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7059 + 236] = msg.sender
                            mem[_7059 + 268] = 0
                            mem[_7059 + 300] = stor15[stor17 - 1]
                            mem[_7059 + 332] = 128
                            mem[_7059 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7059 + 396] = mem[s + _7059 + 200]
                                s = s + 32
                                continue 
                            mem[_7059 + 200] = 164
                            mem[_7059 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7059 + 492
                            mem[_7059 + 396] = 50
                            mem[_7059 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7059 + 232
                            t = _7059 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7059 + 652] = 0 or Mask(224, 32, mem[_7059 + 652])
                            call msg.sender.mem[_7059 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7059 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7059 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7059 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7059 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7059 + 560] = mem[idx + _7059 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7059 + 592] = mem[_7059 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 592]
                            mem[64] = _7059 + ceil32(return_data.size) + 493
                            mem[_7059 + 492] = return_data.size
                            mem[_7059 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7059 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7059 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + ceil32(return_data.size) + 561] = mem[idx + _7059 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7059 + ceil32(return_data.size) + 593] = mem[_7059 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7059 + ceil32(return_data.size) + 593]
                    ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor17', 17))), ('name', 'stor15', 15))), ('name', 'stor7', 7))))
                    mem[64] = _7059 + 264
                    mem[_7059 + 200] = stor15[stor17 - 1]
                    mem[_7059 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor15[stor17 - 1]
                    mem[32] = 7
                    stor7[stor15[stor17 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                    if not ext_code.size(msg.sender):
                        idx = idx + 1
                        continue 
                    mem[_7059 + 300] = msg.sender
                    mem[_7059 + 332] = 0
                    mem[_7059 + 364] = stor15[stor17 - 1]
                    mem[_7059 + 396] = 128
                    mem[_7059 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[s + _7059 + 460] = mem[s + _7059 + 200]
                        s = s + 32
                        continue 
                    mem[_7059 + 264] = 164
                    mem[_7059 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _7059 + 556
                    mem[_7059 + 460] = 50
                    mem[_7059 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 662 len 26]
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    t = _7059 + 296
                    u = _7059 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_7059 + 716] = 0 or Mask(224, 32, mem[_7059 + 716])
                    call msg.sender.mem[_7059 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_7059 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7059 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_7059 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_7059 + 560] = 32
                        idx = 32
                        while idx < 50:
                            mem[idx + _7059 + 624] = mem[idx + _7059 + 492]
                            idx = idx + 32
                            continue 
                        mem[_7059 + 656] = mem[_7059 + 670 len 18]
                        revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 656]
                    mem[64] = _7059 + ceil32(return_data.size) + 557
                    mem[_7059 + 556] = return_data.size
                    mem[_7059 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_7059 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_7059 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    if not stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17]:
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7059 + 200
                        mem[_7059 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7059 + 236] = msg.sender
                            mem[_7059 + 268] = 0
                            mem[_7059 + 300] = stor15[stor17 - 1]
                            mem[_7059 + 332] = 128
                            mem[_7059 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7059 + 396] = mem[s + _7059 + 200]
                                s = s + 32
                                continue 
                            mem[_7059 + 200] = 164
                            mem[_7059 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7059 + 492
                            mem[_7059 + 396] = 50
                            mem[_7059 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            s = _7059 + 232
                            t = _7059 + 492
                            idx = 164
                            while idx >= 32:
                                mem[t] = mem[s]
                                s = s + 32
                                t = t + 32
                                idx = idx - 32
                                continue 
                            mem[_7059 + 652] = 0 or Mask(224, 32, mem[_7059 + 652])
                            call msg.sender.mem[_7059 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7059 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7059 + 610 len 14]
                                    s = 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7059 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7059 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7059 + 560] = mem[idx + _7059 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7059 + 592] = mem[_7059 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 592]
                            mem[64] = _7059 + ceil32(return_data.size) + 493
                            mem[_7059 + 492] = return_data.size
                            mem[_7059 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7059 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + ceil32(return_data.size) + 611 len 14]
                                s = 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7059 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + ceil32(return_data.size) + 561] = mem[idx + _7059 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7059 + ceil32(return_data.size) + 593] = mem[_7059 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7059 + ceil32(return_data.size) + 593]
                        mem[64] = _7059 + 264
                        mem[_7059 + 200] = stor15[stor17 - 1]
                        mem[_7059 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7059 + 300] = msg.sender
                        mem[_7059 + 332] = 0
                        mem[_7059 + 364] = stor15[stor17 - 1]
                        mem[_7059 + 396] = 128
                        mem[_7059 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7059 + 460] = mem[s + _7059 + 200]
                            s = s + 32
                            continue 
                        mem[_7059 + 264] = 164
                        mem[_7059 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7059 + 556
                        mem[_7059 + 460] = 50
                        mem[_7059 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        t = _7059 + 296
                        u = _7059 + 556
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_7059 + 716] = 0 or Mask(224, 32, mem[_7059 + 716])
                        call msg.sender.mem[_7059 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7059 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + 674 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7059 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + 624] = mem[idx + _7059 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7059 + 656] = mem[_7059 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 656]
                        mem[64] = _7059 + ceil32(return_data.size) + 557
                        mem[_7059 + 556] = return_data.size
                        mem[_7059 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7059 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7059 + ceil32(return_data.size) + 675 len 14]
                            idx = idx + 1
                            continue 
                    else:
                        stor15[stor17 - 1] = stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17]
                        stor15[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_7062 / block.timestamp) + block.number) / stor17 % stor17] = stor15[stor17 - 1]
                        mem[64] = _7059 + 200
                        mem[_7059 + 168] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if stor7[stor15[stor17 - 1]]:
                            revert with 0, 'ERC721: token already minted'
                        if not tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]]:
                            tokenOfOwnerByIndex[address(msg.sender)]++
                            tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor15[stor17 - 1]
                            tokenOfOwnerByIndex[address(msg.sender)][1][stor15[stor17 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[32] = 7
                        if stor7[stor15[stor17 - 1]]:
                            require stor7[stor15[stor17 - 1]] - 1 < tokenByIndex.length
                            mem[0] = 6
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_256 = msg.sender
                            tokenByIndex[stor7[stor15[stor17 - 1]] - 1].field_416 = 0
                            emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                            if not ext_code.size(msg.sender):
                                idx = idx + 1
                                continue 
                            mem[_7059 + 236] = msg.sender
                            mem[_7059 + 268] = 0
                            mem[_7059 + 300] = stor15[stor17 - 1]
                            mem[_7059 + 332] = 128
                            mem[_7059 + 364] = 0
                            s = 0
                            while s < 0:
                                mem[s + _7059 + 396] = mem[s + _7059 + 200]
                                s = s + 32
                                continue 
                            mem[_7059 + 200] = 164
                            mem[_7059 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _7059 + 492
                            mem[_7059 + 396] = 50
                            mem[_7059 + 428 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 598 len 26]
                            if not ext_code.size(msg.sender):
                                revert with 0, 'Address: call to non-contract'
                            t = _7059 + 232
                            u = _7059 + 492
                            s = 164
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_7059 + 652] = 0 or Mask(224, 32, mem[_7059 + 652])
                            call msg.sender.mem[_7059 + 492 len 4] with:
                                 gas gas_remaining wei
                                args mem[_7059 + 496 len 160]
                            if not return_data.size:
                                if ext_call.success:
                                    require mem[96] >= 32
                                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 
                                                    32,
                                                    50,
                                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                    mem[_7059 + 610 len 14]
                                    idx = idx + 1
                                    continue 
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_7059 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_7059 + 496] = 32
                                idx = 32
                                while idx < 50:
                                    mem[idx + _7059 + 560] = mem[idx + _7059 + 428]
                                    idx = idx + 32
                                    continue 
                                mem[_7059 + 592] = mem[_7059 + 606 len 18]
                                revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 592]
                            mem[64] = _7059 + ceil32(return_data.size) + 493
                            mem[_7059 + 492] = return_data.size
                            mem[_7059 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                                require return_data.size >= 32
                                if Mask(32, 224, mem[_7059 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + ceil32(return_data.size) + 611 len 14]
                                idx = idx + 1
                                continue 
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_7059 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + ceil32(return_data.size) + 497] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + ceil32(return_data.size) + 561] = mem[idx + _7059 + 428]
                                idx = idx + 32
                                continue 
                            mem[_7059 + ceil32(return_data.size) + 593] = mem[_7059 + ceil32(return_data.size) + 607 len 18]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        mem[_7059 + ceil32(return_data.size) + 593]
                        mem[64] = _7059 + 264
                        mem[_7059 + 200] = stor15[stor17 - 1]
                        mem[_7059 + 232] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = stor15[stor17 - 1]
                        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                        tokenByIndex[tokenByIndex.length].field_416 = 0
                        mem[0] = stor15[stor17 - 1]
                        mem[32] = 7
                        stor7[stor15[stor17 - 1]] = tokenByIndex.length
                        emit Transfer(0, msg.sender, stor15[stor17 - 1]);
                        if not ext_code.size(msg.sender):
                            idx = idx + 1
                            continue 
                        mem[_7059 + 300] = msg.sender
                        mem[_7059 + 332] = 0
                        mem[_7059 + 364] = stor15[stor17 - 1]
                        mem[_7059 + 396] = 128
                        mem[_7059 + 428] = 0
                        s = 0
                        while s < 0:
                            mem[s + _7059 + 460] = mem[s + _7059 + 200]
                            s = s + 32
                            continue 
                        mem[_7059 + 264] = 164
                        mem[_7059 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _7059 + 556
                        mem[_7059 + 460] = 50
                        mem[_7059 + 492 len 50] = 0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_7059 + 662 len 26]
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        s = _7059 + 296
                        t = _7059 + 556
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_7059 + 716] = 0 or Mask(224, 32, mem[_7059 + 716])
                        call msg.sender.mem[_7059 + 556 len 4] with:
                             gas gas_remaining wei
                            args mem[_7059 + 560 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_7059 + 674 len 14]
                                s = 1
                                continue 
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_7059 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_7059 + 560] = 32
                            idx = 32
                            while idx < 50:
                                mem[idx + _7059 + 624] = mem[idx + _7059 + 492]
                                idx = idx + 32
                                continue 
                            mem[_7059 + 656] = mem[_7059 + 670 len 18]
                            revert with 0, 32, 50, 0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152, mem[_7059 + 656]
                        mem[64] = _7059 + ceil32(return_data.size) + 557
                        mem[_7059 + 556] = return_data.size
                        mem[_7059 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_7059 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_7059 + ceil32(return_data.size) + 675 len 14]
                            s = 1
                            continue 
                ('iszero', 'ext_call.success')
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_7059 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_7059 + ceil32(return_data.size) + 561] = 32
                idx = 32
                while idx < 50:
                    mem[idx + _7059 + ceil32(return_data.size) + 625] = mem[idx + _7059 + 492]
                    idx = idx + 32
                    continue 
                mem[_7059 + ceil32(return_data.size) + 657] = mem[_7059 + ceil32(return_data.size) + 671 len 18]
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            mem[_7059 + ceil32(return_data.size) + 657]
}



}
