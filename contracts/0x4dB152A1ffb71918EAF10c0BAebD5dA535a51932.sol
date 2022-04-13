contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_515d8c43(?) = 0xc991663afe84fc89e9a21f5748191c087ca2468e

const limit = 2000


mapping of uint8 stor0;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of uint256 stor8;
array of uint256 baseURI;
address owner;
uint256 tokenPrice;
uint256 requested;
uint256 totalDividend;
mapping of uint256 stor14;
uint256 stor15;

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
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
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

function requested() {
    return requested
}

function totalDividend() {
    return totalDividend
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
    return baseURI[0 len baseURI.length]
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

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
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

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (totalDividend - stor14[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function mintItem(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor15 >= 2000:
        revert with 0, 'DONE MINTING'
    stor15++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor15]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg1)][1][stor15]:
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor15
        tokenOfOwnerByIndex[address(arg1)][1][stor15] = tokenOfOwnerByIndex[address(arg1)]
    if stor3[stor15]:
        require stor3[stor15] - 1 < tokenByIndex.length
        tokenByIndex[stor3[stor15] - 1].field_256 = arg1
        tokenByIndex[stor3[stor15] - 1].field_416 = 0
        emit Transfer(0, arg1, stor15);
        if not stor3[stor15]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg2.length) + 240 len 20]
        stor8[stor15][] = Array(len=arg2.length, data=arg2[all])
        mem[ceil32(arg2.length) + 128] = stor15
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length].field_0 = stor15
    tokenByIndex[tokenByIndex.length].field_256 = arg1
    tokenByIndex[tokenByIndex.length].field_416 = 0
    stor3[stor15] = tokenByIndex.length
    emit Transfer(0, arg1, stor15);
    if not stor3[stor15]:
        revert with 0, 
                    32,
                    44,
                    0x6e4552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 304 len 20]
    stor8[stor15][] = Array(len=arg2.length, data=arg2[all])
    return stor15
}

function requestMint() payable {
    requested++
    if 2000 <= requested:
        revert with 0, 'DONE MINTING'
    if tokenPrice != msg.value:
        revert with 0, 'Ether amount not correct'
    if not tokenPrice:
        call 0xc991663afe84fc89e9a21f5748191c087ca2468e with:
             gas gas_remaining wei
    else:
        if 75 * tokenPrice / tokenPrice != 75:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call 0xc991663afe84fc89e9a21f5748191c087ca2468e with:
           value 75 * tokenPrice / 100 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'could not send'
    if not return_data.size:
        if not tokenPrice:
            stor14[stor12] = totalDividend
            require requested
            totalDividend += 0 / requested
        else:
            if 25 * tokenPrice / tokenPrice != 25:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            stor14[stor12] = totalDividend
            require requested
            totalDividend += 25 * tokenPrice / 100 / requested
        if requested >= 500:
            if not requested / 500:
                tokenPrice = 0
                tokenPrice = 25 * 10^16
            else:
                if 25 * 10^16 * requested / 500 / requested / 500 != 25 * 10^16:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                tokenPrice = 25 * 10^16 * requested / 500
                if (25 * 10^16 * requested / 500) + 25 * 10^16 < 25 * 10^16 * requested / 500:
                    revert with 0, 'SafeMath: addition overflow'
                tokenPrice = (25 * 10^16 * requested / 500) + 25 * 10^16
    else:
        if not tokenPrice:
            stor14[stor12] = totalDividend
            require requested
            totalDividend += 0 / requested
        else:
            if 25 * tokenPrice / tokenPrice != 25:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 262 len 31]
            stor14[stor12] = totalDividend
            require requested
            totalDividend += 25 * tokenPrice / 100 / requested
        if requested >= 500:
            if not requested / 500:
                tokenPrice = 0
                tokenPrice = 25 * 10^16
            else:
                if 25 * 10^16 * requested / 500 / requested / 500 != 25 * 10^16:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 390 len 31]
                tokenPrice = 25 * 10^16 * requested / 500
                if (25 * 10^16 * requested / 500) + 25 * 10^16 < 25 * 10^16 * requested / 500:
                    revert with 0, 'SafeMath: addition overflow'
                tokenPrice = (25 * 10^16 * requested / 500) + 25 * 10^16
    emit Request(msg.sender, msg.value);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
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

function getReflectionBalances() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    idx = 0
    s = 0
    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
        if idx >= tokenOfOwnerByIndex[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 14
        idx = idx + 1
        s = s + totalDividend - stor14[stor1[address(msg.sender)][idx]]
        continue 
    return (s * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
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
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[694 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 827 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
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
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[758 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 891 len 14]
}

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    idx = 0
    s = 0
    while idx < tokenOfOwnerByIndex[address(msg.sender)]:
        if idx >= tokenOfOwnerByIndex[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 14
        stor14[stor1[address(msg.sender)][idx]] = totalDividend
        idx = idx + 1
        s = s + totalDividend - stor14[stor1[address(msg.sender)][idx]]
        continue 
    if eth.balance(this.address) < s * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value s * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
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
                    0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
                        0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
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
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 548] = 128
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 708 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 740 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 580 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 708 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 694 len 14])
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 694 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 827 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 612] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 644 len arg4.length % 32]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 740 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 772 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 416 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 740 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14])
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 726 len 14])
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
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 612] = 128
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[arg4.length + ceil32(arg4.length) + 772 len floor32(arg4.length + 164)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 804 len arg4.length + 164 % 32] = Mask(8 * arg4.length + -floor32(arg4.length + 164) + 164, -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256, 50) >> -(8 * floor32(arg4.length + 164) + -arg4.length - 132) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 644 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 772 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 758 len 14])
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[arg4.length + ceil32(arg4.length) + 758 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 891 len 14]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 676] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 708 len arg4.length % 32]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[floor32(arg4.length) + ceil32(arg4.length) + 804 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]
                mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 836 len floor32(arg4.length) + 196 % 32] = Mask(8 * floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196, -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256, 50) >> -(8 * floor32(floor32(arg4.length) + 196) + -floor32(arg4.length) - 164) + 256
                call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 480 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 676 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 804 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not ext_call.success:
                        if arg4.length:
                            revert with arg4[all]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14])
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
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                                    Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[floor32(arg4.length) + ceil32(arg4.length) + 790 len 14])
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 836]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 923 len 14]
}



}
