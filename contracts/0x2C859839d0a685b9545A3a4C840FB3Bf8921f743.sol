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
    if not arg1:
        return 0
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
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        if tokenOfOwnerByIndex[stor3[arg1].field_512][1][arg1]:
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
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
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
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
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
        else:
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
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    mem[1124 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
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
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    mem[1188 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
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
                tokenByIndex[stor7[arg1] - 1].field_256 = punkBids[arg1].field_512
                tokenByIndex[stor7[arg1] - 1].field_416 = 0
                emit Transfer(msg.sender, punkBids[arg1].field_512, arg1);
                if ext_code.size(punkBids[arg1].field_512):
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1070 len 26]
                    if not ext_code.size(punkBids[arg1].field_512):
                        revert with 0, 'Address: call to non-contract'
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
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
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    mem[1188 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
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
        else:
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
                    mem[964 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1152 len 4] = 0
                    mem[1124 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
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
                    mem[1028 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, msg.sender, arg1, 128, 0
                    mem[1216 len 4] = 0
                    mem[1188 len 0] = 0
                    call punkBids[arg1].field_512.0x80 with:
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
                u = mem[64]
                s = mem[_881]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_881])] = mem[_881 + floor32(mem[_881]) + -(mem[_881] % 32) + 64 len mem[_881] % 32] or Mask(8 * -(mem[_881] % 32) + 32, -(8 * -(mem[_881] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_881])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _926 + _479 + -mem[64] + 288]
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
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _1325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_479 + 196]
                    _1327 = mem[_479 + 196]
                    if not mem[_479 + 196]:
                        if not mem[_479 + 196] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_479 + 196] + 32]
                        mem[floor32(mem[_479 + 196]) + mem[64] + 68] = mem[floor32(mem[_479 + 196]) + mem[64] + -(mem[_479 + 196] % 32) + 100 len mem[_479 + 196] % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_1327) + _1325 + -mem[64] + 100
                    mem[mem[64] + 68] = mem[_479 + 228]
                    idx = 32
                    while idx < _1327:
                        mem[idx + mem[64] + 68] = mem[idx + _479 + 228]
                        idx = idx + 32
                        continue 
                    if not _1327 % 32:
                        revert with 0, 32, mem[mem[64] + 36 len _1327 + 32]
                    mem[floor32(_1327) + mem[64] + 68] = mem[floor32(_1327) + mem[64] + -(_1327 % 32) + 100 len _1327 % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_1327) + 64]
                _1301 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1301] = return_data.size
                mem[_1301 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1301 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _1329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_479 + 196]
                _1331 = mem[_479 + 196]
                if not mem[_479 + 196]:
                    if not mem[_479 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_479 + 196] + 32]
                    mem[floor32(mem[_479 + 196]) + mem[64] + 68] = mem[floor32(mem[_479 + 196]) + mem[64] + -(mem[_479 + 196] % 32) + 100 len mem[_479 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_479 + 228]
                    idx = 32
                    while idx < _1331:
                        mem[idx + mem[64] + 68] = mem[idx + _479 + 228]
                        idx = idx + 32
                        continue 
                    if not _1331 % 32:
                        revert with memory
                          from mem[64]
                           len _1331 + _1329 + -mem[64] + 68
                    mem[floor32(_1331) + _1329 + 68] = mem[floor32(_1331) + _1329 + -(_1331 % 32) + 100 len _1331 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1331) + _1329 + -mem[64] + 100
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
            t = mem[64]
            idx = mem[_885]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_885])] = mem[_885 + floor32(mem[_885]) + -(mem[_885] % 32) + 64 len mem[_885] % 32] or Mask(8 * -(mem[_885] % 32) + 32, -(8 * -(mem[_885] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_885])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _930 + _473 + -mem[64] + 288]
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
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_473 + 196]
                _1343 = mem[_473 + 196]
                if not mem[_473 + 196]:
                    if not mem[_473 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_473 + 196] + 32]
                    mem[floor32(mem[_473 + 196]) + mem[64] + 68] = mem[floor32(mem[_473 + 196]) + mem[64] + -(mem[_473 + 196] % 32) + 100 len mem[_473 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_473 + 228]
                    idx = 32
                    while idx < _1343:
                        mem[idx + mem[64] + 68] = mem[idx + _473 + 228]
                        idx = idx + 32
                        continue 
                    if not _1343 % 32:
                        revert with memory
                          from mem[64]
                           len _1343 + _1341 + -mem[64] + 68
                    mem[floor32(_1343) + _1341 + 68] = mem[floor32(_1343) + _1341 + -(_1343 % 32) + 100 len _1343 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1343) + _1341 + -mem[64] + 100
            _1303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1303] = return_data.size
            mem[_1303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1303 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1345 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_473 + 196]
            _1347 = mem[_473 + 196]
            if not mem[_473 + 196]:
                if not mem[_473 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_473 + 196] + 32]
                mem[floor32(mem[_473 + 196]) + mem[64] + 68] = mem[floor32(mem[_473 + 196]) + mem[64] + -(mem[_473 + 196] % 32) + 100 len mem[_473 + 196] % 32]
            else:
                mem[mem[64] + 68] = mem[_473 + 228]
                idx = 32
                while idx < _1347:
                    mem[idx + mem[64] + 68] = mem[idx + _473 + 228]
                    idx = idx + 32
                    continue 
                if not _1347 % 32:
                    revert with memory
                      from mem[64]
                       len _1347 + _1345 + -mem[64] + 68
                mem[floor32(_1347) + _1345 + 68] = mem[floor32(_1347) + _1345 + -(_1347 % 32) + 100 len _1347 % 32]
            revert with memory
              from mem[64]
               len floor32(_1347) + _1345 + -mem[64] + 100
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
            u = mem[64]
            s = mem[_889]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_889])] = mem[_889 + floor32(mem[_889]) + -(mem[_889] % 32) + 64 len mem[_889] % 32] or Mask(8 * -(mem[_889] % 32) + 32, -(8 * -(mem[_889] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_889])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _934 + _482 + -mem[64] + 288]
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
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _1357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_482 + 196]
                _1359 = mem[_482 + 196]
                if not mem[_482 + 196]:
                    if not mem[_482 + 196] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_482 + 196] + 32]
                    mem[floor32(mem[_482 + 196]) + mem[64] + 68] = mem[floor32(mem[_482 + 196]) + mem[64] + -(mem[_482 + 196] % 32) + 100 len mem[_482 + 196] % 32]
                else:
                    mem[mem[64] + 68] = mem[_482 + 228]
                    idx = 32
                    while idx < _1359:
                        mem[idx + mem[64] + 68] = mem[idx + _482 + 228]
                        idx = idx + 32
                        continue 
                    if not _1359 % 32:
                        revert with memory
                          from mem[64]
                           len _1359 + _1357 + -mem[64] + 68
                    mem[floor32(_1359) + _1357 + 68] = mem[floor32(_1359) + _1357 + -(_1359 % 32) + 100 len _1359 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_1359) + _1357 + -mem[64] + 100
            _1305 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1305] = return_data.size
            mem[_1305 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1305 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _1361 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_482 + 196]
            _1363 = mem[_482 + 196]
            if not mem[_482 + 196]:
                if not mem[_482 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_482 + 196] + 32]
                mem[floor32(mem[_482 + 196]) + mem[64] + 68] = mem[floor32(mem[_482 + 196]) + mem[64] + -(mem[_482 + 196] % 32) + 100 len mem[_482 + 196] % 32]
            else:
                mem[mem[64] + 68] = mem[_482 + 228]
                idx = 32
                while idx < _1363:
                    mem[idx + mem[64] + 68] = mem[idx + _482 + 228]
                    idx = idx + 32
                    continue 
                if not _1363 % 32:
                    revert with memory
                      from mem[64]
                       len _1363 + _1361 + -mem[64] + 68
                mem[floor32(_1363) + _1361 + 68] = mem[floor32(_1363) + _1361 + -(_1363 % 32) + 100 len _1363 % 32]
            revert with memory
              from mem[64]
               len floor32(_1363) + _1361 + -mem[64] + 100
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
        t = mem[64]
        idx = mem[_893]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[mem[64] + floor32(mem[_893])] = mem[_893 + floor32(mem[_893]) + -(mem[_893] % 32) + 64 len mem[_893] % 32] or Mask(8 * -(mem[_893] % 32) + 32, -(8 * -(mem[_893] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_893])])
        call msg.sender.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _938 + _476 + -mem[64] + 288]
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
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _1373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_476 + 196]
            _1375 = mem[_476 + 196]
            if not mem[_476 + 196]:
                if not mem[_476 + 196] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_476 + 196] + 32]
                mem[floor32(mem[_476 + 196]) + mem[64] + 68] = mem[floor32(mem[_476 + 196]) + mem[64] + -(mem[_476 + 196] % 32) + 100 len mem[_476 + 196] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_1375) + 64]
            mem[mem[64] + 68] = mem[_476 + 228]
            idx = 32
            while idx < _1375:
                mem[idx + mem[64] + 68] = mem[idx + _476 + 228]
                idx = idx + 32
                continue 
            if not _1375 % 32:
                revert with memory
                  from mem[64]
                   len _1375 + _1373 + -mem[64] + 68
            mem[floor32(_1375) + _1373 + 68] = mem[floor32(_1375) + _1373 + -(_1375 % 32) + 100 len _1375 % 32]
            revert with memory
              from mem[64]
               len floor32(_1375) + _1373 + -mem[64] + 100
        _1307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1307] = return_data.size
        mem[_1307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, mem[_1307 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 118 len 14]
            s = 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_476 + 196]
        _1379 = mem[_476 + 196]
        if not mem[_476 + 196]:
            if not mem[_476 + 196] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_476 + 196] + 32]
            mem[floor32(mem[_476 + 196]) + mem[64] + 68] = mem[floor32(mem[_476 + 196]) + mem[64] + -(mem[_476 + 196] % 32) + 100 len mem[_476 + 196] % 32]
        else:
            mem[mem[64] + 68] = mem[_476 + 228]
            idx = 32
            while idx < _1379:
                mem[idx + mem[64] + 68] = mem[idx + _476 + 228]
                idx = idx + 32
                continue 
            if not _1379 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1379 + 32]
            mem[floor32(_1379) + mem[64] + 68] = mem[floor32(_1379) + mem[64] + -(_1379 % 32) + 100 len _1379 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1379) + 64]
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
                        if ext_code.size(arg2):
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if not ext_code.size(arg2):
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
}

function buyPunk(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = punksOfferedForSale[arg1].field_256
    mem[160] = punksOfferedForSale[arg1].field_512
    mem[192] = punksOfferedForSale[arg1].field_768
    mem[224] = punksOfferedForSale[arg1].field_1024
    if arg1 >= 10000:
        revert with 0, 'Out of tokenId'
    if not punksOfferedForSale[arg1].field_0:
        revert with 0, 'No Sale'
    if not punksOfferedForSale[arg1].field_1024:
        if msg.value < punksOfferedForSale[arg1].field_768:
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
        if tokenByIndex[stor7[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
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
        if tokenByIndex[stor7[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
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
            if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
                tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
            if stor7[arg1]:
                require stor7[arg1] - 1 < tokenByIndex.length
                tokenByIndex[stor7[arg1] - 1].field_256 = msg.sender
                tokenByIndex[stor7[arg1] - 1].field_416 = 0
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender):
                    mem[612] = msg.sender
                    mem[644] = punksOfferedForSale[arg1].field_512
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
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1056 len 4] = 0
                    mem[1028 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if punksOfferedForSale[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[854 len 14], 0, 32, 50) >> 544
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender):
                    mem[676] = msg.sender
                    mem[708] = punksOfferedForSale[arg1].field_512
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
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1120 len 4] = 0
                    mem[1092 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if punksOfferedForSale[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[918 len 14], 0, 32, 50) >> 544
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[854 len 14], 0, 32, 50) >> 544
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[918 len 14], 0, 32, 50) >> 544
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14]
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[918 len 14]
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
                            require return_data.size >= 32
                            if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[ceil32(return_data.size) + 1051 len 14]
    else:
        if punksOfferedForSale[arg1].field_1024 != msg.sender:
            revert with 0, 'Unable to sell'
        if msg.value < punksOfferedForSale[arg1].field_768:
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
        if tokenByIndex[stor7[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
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
        if tokenByIndex[stor7[arg1] - 1].field_256 != punksOfferedForSale[arg1].field_512:
            revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args 0, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[854 len 14]
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[918 len 14], 0, 32, 50) >> 544
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[612] = msg.sender
                        mem[644] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1056 len 4] = 0
                        mem[1028 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[854 len 14], 0, 32, 50) >> 544
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                    emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                    if ext_code.size(msg.sender):
                        mem[676] = msg.sender
                        mem[708] = punksOfferedForSale[arg1].field_512
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
                        if not ext_code.size(msg.sender):
                            revert with 0, 'Address: call to non-contract'
                        mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                        mem[1120 len 4] = 0
                        mem[1092 len 0] = 0
                        call msg.sender.0x80 with:
                             gas gas_remaining wei
                            args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if punksOfferedForSale[arg1].field_0:
                                    revert with memory
                                      from 128
                                       len bool(punksOfferedForSale[arg1].field_0)
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[918 len 14], 0, 32, 50) >> 544
                            require bool(punksOfferedForSale[arg1].field_0) >= 32
                            if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                        else:
                            mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            32,
                                            50,
                                            0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
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
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender):
                    mem[612] = msg.sender
                    mem[644] = punksOfferedForSale[arg1].field_512
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
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1056 len 4] = 0
                    mem[1028 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1028 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if punksOfferedForSale[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[854 len 14], 0, 32, 50) >> 544
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[854 len 14])
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
                emit Transfer(punksOfferedForSale[arg1].field_512, msg.sender, arg1);
                if ext_code.size(msg.sender):
                    mem[676] = msg.sender
                    mem[708] = punksOfferedForSale[arg1].field_512
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
                    if not ext_code.size(msg.sender):
                        revert with 0, 'Address: call to non-contract'
                    mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0
                    mem[1120 len 4] = 0
                    mem[1092 len 0] = 0
                    call msg.sender.0x80 with:
                         gas gas_remaining wei
                        args Mask(1248, -1024, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 1024, mem[1092 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if punksOfferedForSale[arg1].field_0:
                                revert with memory
                                  from 128
                                   len bool(punksOfferedForSale[arg1].field_0)
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[918 len 14], 0, 32, 50) >> 544
                        require bool(punksOfferedForSale[arg1].field_0) >= 32
                        if Mask(32, 224, punksOfferedForSale[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        Mask(112, -800, onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, punksOfferedForSale[arg1].field_512, arg1, 128, 0) << 800
                    else:
                        mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        50,
                                        0x2e4552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                        Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[918 len 14])
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



}
