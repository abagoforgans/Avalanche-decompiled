contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
const MAX_SUPPLY = 7777


mapping of uint8 stor0;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 stor3;
mapping of uint256 pendingWithdrawals;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor12;
mapping of address approved;
mapping of uint8 stor14;
array of uint256 name;
array of uint256 symbol;
array of struct baseURI;
uint256 _price;
mapping of address minter;
address owner;
mapping of uint256 stor23;
mapping of struct listing;
uint256 guitarsRemainingToAssign;
uint256 reserved;
uint256 _saleStarted;
address stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
address stor32;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function getListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    return listing[arg1].field_0, 
           listing[arg1].field_256,
           listing[arg1].field_512,
           listing[arg1].field_768,
           bool(listing[arg1].field_1024)
}

function totalSupply() {
    return tokenByIndex.length
}

function _price() {
    return _price
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

function reflectionBalance() {
    return reflectionBalance
}

function punkCreator(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function totalDividend() {
    return totalDividend
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
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor12[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function guitarsRemainingToAssign() {
    return guitarsRemainingToAssign
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

function _saleStarted() {
    return _saleStarted
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    return minter[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor14[address(arg1)][address(arg2)])
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

function currentRate() {
    return (reflectionBalance / 7777)
}

function reflectToHolders() payable {
    reflectionBalance += msg.value
    totalDividend += msg.value / 7777
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (totalDividend - stor3[arg1])
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _price = arg1
}

function setDevRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = arg1
}

function setSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _saleStarted = arg1
}

function setOtherContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32 = arg1
}

function setMinterRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30 = arg1
}

function setReflectionRoyalty(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor31 = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor14[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if tokenByIndex.length >= 7777:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        return 0
    require arg1
    if arg1 * _price / arg1 != _price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * _price)
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

function createListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg1] - 1].field_256 != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x73417661784775697461724d61726b65743a2063616c6c6572206973206e6f7420746865206f776e6572206f662074686520746f6b65,
                    mem[314 len 10]
    listing[arg1].field_0 = msg.sender
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = arg1
    listing[arg1].field_768 = arg2
    listing[arg1].field_1024 = 1
    emit ListingCreated(arg2, msg.sender, 0, arg1);
}

function cancelListing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg1] - 1].field_256 != msg.sender:
        revert with 0, 
                    32,
                    54,
                    0x73417661784775697461724d61726b65743a2063616c6c6572206973206e6f7420746865206f776e6572206f662074686520746f6b65,
                    mem[314 len 10]
    if bool(listing[arg1].field_1024) != 1:
        revert with 0, 'AvaxGuitarMarket: not for sale'
    listing[arg1].field_0 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_768 = 0
    listing[arg1].field_1024 = 0
    emit ListingCancelled(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor12[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor12[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor12[arg2] - 1].field_256:
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if tokenByIndex[stor12[arg2] - 1].field_256 != msg.sender:
        if not stor14[stor11[stor12[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 
                        32,
                        56,
                        0x724552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[316 len 8]
    approved[arg2] = arg1
    if not stor12[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor12[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor12[arg2] - 1].field_256, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor12[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg3] - 1].field_256 != msg.sender:
        if not stor12[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor14[stor11[stor12[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[309 len 15]
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[392 len 28]
    approved[arg3] = 0
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor12[arg3] - 1].field_256, 0, arg3);
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
    if stor12[arg3]:
        require stor12[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor12[arg3] - 1].field_256 = arg2
        tokenByIndex[stor12[arg3] - 1].field_416 = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor12[arg3] = tokenByIndex.length
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
        if tokenOfOwnerByIndex[address(msg.sender)] <= idx:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require idx < tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 3
        idx = idx + 1
        s = s + totalDividend - stor3[stor10[address(msg.sender)][idx]]
        continue 
    return (s * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)])
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
        if tokenOfOwnerByIndex[address(msg.sender)] <= idx:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[198 len 30]
        require idx < tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 3
        stor3[stor10[address(msg.sender)][idx]] = totalDividend
        idx = idx + 1
        s = s + totalDividend - stor3[stor10[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] * tokenOfOwnerByIndex[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 12
    if not stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = baseURI.length
    mem[0] = 18
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
        mem[64] = baseURI.length + ceil32(baseURI.length) + 225
        mem[baseURI.length + ceil32(baseURI.length) + 225] = 32
        mem[baseURI.length + ceil32(baseURI.length) + 257] = mem[ceil32(baseURI.length) + 192]
        mem[baseURI.length + ceil32(baseURI.length) + 289 len ceil32(mem[ceil32(baseURI.length) + 192])] = mem[ceil32(baseURI.length) + 224 len ceil32(mem[ceil32(baseURI.length) + 192])]
        var33001 = ceil32(mem[ceil32(baseURI.length) + 192])
        if not mem[ceil32(baseURI.length) + 192] % 32:
            return 32, mem[baseURI.length + ceil32(baseURI.length) + 257 len mem[ceil32(baseURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + 289] = mem[floor32(mem[ceil32(baseURI.length) + 192]) + baseURI.length + ceil32(baseURI.length) + -(mem[ceil32(baseURI.length) + 192] % 32) + 321 len mem[ceil32(baseURI.length) + 192] % 32]
        return 32, mem[baseURI.length + ceil32(baseURI.length) + 257 len floor32(mem[ceil32(baseURI.length) + 192]) + 64]
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor12[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg3] - 1].field_256 != msg.sender:
        if not stor12[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
            if not stor14[stor11[stor12[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[341 len 15]
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg3] - 1].field_256 != arg1:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[424 len 28]
    approved[arg3] = 0
    if not stor12[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor12[arg3] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor12[arg3] - 1].field_256, 0, arg3);
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
    if stor12[arg3]:
        require stor12[arg3] - 1 < tokenByIndex.length
        tokenByIndex[stor12[arg3] - 1].field_256 = arg2
        tokenByIndex[stor12[arg3] - 1].field_416 = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
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
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[694 len 14],
                            Mask(144, -256, mem[694 len 14]) << 256
            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[694 len 14],
                            Mask(144, -256, mem[694 len 14]) << 256
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
        stor12[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
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
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[758 len 14],
                            Mask(144, -256, mem[758 len 14]) << 256
            mem[804 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[758 len 14],
                            Mask(144, -256, mem[758 len 14]) << 256
            require return_data.size >= 32
            if Mask(32, 224, mem[804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 891 len 14]
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = listing[arg1].field_256
    mem[160] = listing[arg1].field_512
    mem[192] = listing[arg1].field_768
    mem[224] = bool(listing[arg1].field_1024)
    if bool(listing[arg1].field_1024) != 1:
        revert with 0, 32, 35, 0x73417661784775697461724d61726b65743a2070756e6b206e6f7420666f722073616c, mem[359 len 29]
    if listing[arg1].field_768 != msg.value:
        revert with 0, 
                    32,
                    49,
                    0x64417661784775697461724d61726b65743a206d7573742073656e6420636f727265637420616d6f756e7420746f206275,
                    mem[373 len 15]
    mem[256] = 41
    mem[288 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[329 len 23],
                    mem[375 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg1] - 1].field_256 != listing[arg1].field_0:
        revert with 0, 
                    32,
                    54,
                    0x72417661784775697461724d61726b65743a2073656c6c6572206d75737420657175616c2063757272656e742070756e6b206f776e65,
                    mem[474 len 10]
    if listing[arg1].field_256:
        if listing[arg1].field_256 != msg.sender:
            revert with 0, 
                        32,
                        56,
                        0x6e417661784775697461724d61726b65743a206c697374696e67206973206e6f7420617661696c61626c6520746f207468652063616c6c65,
                        mem[476 len 8]
    call listing[arg1].field_0 with:
       value (100 * msg.value) - (stor29 * msg.value) - (stor30 * msg.value) - (stor31 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor28 with:
       value msg.value * stor29 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call minter[arg1] with:
       value msg.value * stor30 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    reflectionBalance += msg.value * stor31 / 100
    totalDividend += msg.value * stor31 / 100 / 7777
    mem[352] = 0
    mem[384] = 41
    mem[416 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[457 len 23],
                    mem[503 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor12[arg1] - 1].field_256 != listing[arg1].field_0:
        revert with 0, 32, 41, 0x654552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[589 len 23]
    if not msg.sender:
        revert with 0, 32, 36, 0x2e4552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[584 len 28]
    approved[arg1] = 0
    mem[480] = 41
    mem[512 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
    if not stor12[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[553 len 23],
                    mem[599 len 9]
    require stor12[arg1] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor12[arg1] - 1].field_256, 0, arg1);
    if tokenOfOwnerByIndex[stor24[arg1].field_0][1][arg1]:
        require tokenOfOwnerByIndex[stor24[arg1].field_0] - 1 < tokenOfOwnerByIndex[stor24[arg1].field_0]
        require tokenOfOwnerByIndex[stor24[arg1].field_0][1][arg1] - 1 < tokenOfOwnerByIndex[stor24[arg1].field_0]
        tokenOfOwnerByIndex[stor24[arg1].field_0][tokenOfOwnerByIndex[stor24[arg1].field_0][1][arg1]] = tokenOfOwnerByIndex[stor24[arg1].field_0][tokenOfOwnerByIndex[stor24[arg1].field_0]]
        tokenOfOwnerByIndex[stor24[arg1].field_0][1][tokenOfOwnerByIndex[stor24[arg1].field_0][tokenOfOwnerByIndex[stor24[arg1].field_0]]] = tokenOfOwnerByIndex[stor24[arg1].field_0][1][arg1]
        require tokenOfOwnerByIndex[stor24[arg1].field_0]
        tokenOfOwnerByIndex[stor24[arg1].field_0][tokenOfOwnerByIndex[stor24[arg1].field_0]] = 0
        tokenOfOwnerByIndex[stor24[arg1].field_0]--
        tokenOfOwnerByIndex[stor24[arg1].field_0][1][arg1] = 0
    if not tokenOfOwnerByIndex[address(msg.sender)][1][arg1]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = arg1
        tokenOfOwnerByIndex[address(msg.sender)][1][arg1] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor12[arg1]:
        require stor12[arg1] - 1 < tokenByIndex.length
        tokenByIndex[stor12[arg1] - 1].field_256 = msg.sender
        tokenByIndex[stor12[arg1] - 1].field_416 = 0
        emit Transfer(listing[arg1].field_0, msg.sender, arg1);
        if ext_code.size(msg.sender) > 0:
            mem[612] = msg.sender
            mem[644] = listing[arg1].field_0
            mem[676] = arg1
            mem[708] = 128
            mem[740] = 0
            mem[772 len 0] = None
            mem[576] = 164
            mem[612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[608 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
            mem[772] = 50
            mem[804 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[868 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, listing[arg1].field_0, arg1, 128, 0
            mem[1056 len 4] = 0
            call msg.sender.0x80 with:
                 gas gas_remaining wei
                args 0, mem[1028 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if listing[arg1].field_0 > 0:
                        revert with memory
                          from 128
                           len listing[arg1].field_0
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[854 len 14],
                                Mask(144, -256, mem[854 len 14]) << 256
                require listing[arg1].field_0 >= 32
                if Mask(32, 224, listing[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[854 len 14]
            else:
                mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[854 len 14],
                                Mask(144, -256, mem[854 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[900]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 987 len 14]
    else:
        mem[576] = arg1
        mem[608] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor12[arg1] = tokenByIndex.length
        emit Transfer(listing[arg1].field_0, msg.sender, arg1);
        if ext_code.size(msg.sender) > 0:
            mem[676] = msg.sender
            mem[708] = listing[arg1].field_0
            mem[740] = arg1
            mem[772] = 128
            mem[804] = 0
            mem[836 len 0] = None
            mem[640] = 164
            mem[676 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[672 len 4] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4)
            mem[836] = 50
            mem[868 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1038 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[932 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, listing[arg1].field_0, arg1, 128, 0
            mem[1120 len 4] = 0
            call msg.sender.0x80 with:
                 gas gas_remaining wei
                args 0, mem[1092 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if listing[arg1].field_0 > 0:
                        revert with memory
                          from 128
                           len listing[arg1].field_0
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[918 len 14],
                                Mask(144, -256, mem[918 len 14]) << 256
                require listing[arg1].field_0 >= 32
                if Mask(32, 224, listing[arg1].field_256) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[918 len 14]
            else:
                mem[964 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[918 len 14],
                                Mask(144, -256, mem[918 len 14]) << 256
                require return_data.size >= 32
                if Mask(32, 224, mem[964]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 1051 len 14]
    listing[arg1].field_0 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_256 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_512 = 0
    listing[arg1].field_768 = 0
    listing[arg1].field_1024 = 0
    emit Sale(msg.value, listing[arg1].field_0, msg.sender, arg1);
}

function mintNFT(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if tokenByIndex.length >= 7777:
        revert with 0, 'Sale has already ended.'
    if arg1 <= 0:
        revert with 0, 'You cannot mint 0 Nfts.'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e596f752063616e6e6f74206d696e74206d6f7265207468616e203230204e66747320706572206f6e63,
                    mem[206 len 22]
    if tokenByIndex.length + arg1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + arg1 > 7777:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7345786365656473206d6178696d756d20737570706c792e20506c656173652074727920746f206d696e74206c657373204e667473,
                    mem[217 len 11]
    if tokenByIndex.length >= 7777:
        revert with 0, 'Sale has already ended.'
    if not arg1:
        if msg.value != 0:
            revert with 0, 'Amount of AVAX is not correct.'
        if _saleStarted != 1:
            revert with 0, 'Sale Not Started'
        call stor28 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            _3075 = mem[64]
            mem[mem[64] + 32] = address(msg.sender)
            _3076 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _3078 = sha3(mem[_3076 + 32 len mem[_3076]])
            require block.timestamp
            mem[_3075 + 84] = address(block.coinbase)
            mem[_3075 + 52] = 20
            mem[_3075 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number
            mem[_3075 + 104] = 32
            require guitarsRemainingToAssign
            guitarsRemainingToAssign--
            stor23[stor25 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / guitarsRemainingToAssign % guitarsRemainingToAssign
            if stor23[stor25 - 1] <= 0:
                if stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] <= 0:
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] = guitarsRemainingToAssign - 1
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3075 + 200
                    mem[_3075 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3075 + 236] = msg.sender
                        mem[_3075 + 268] = 0
                        mem[_3075 + 300] = stor23[stor25 - 1]
                        mem[_3075 + 332] = 128
                        mem[_3075 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3075 + s + 396] = mem[_3075 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3075 + 200] = 164
                        mem[_3075 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3075 + 492
                        mem[_3075 + 396] = 50
                        mem[_3075 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3075 + 232
                        u = _3075 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3075 + 652] = 0 or Mask(224, 32, mem[_3075 + 652])
                        call msg.sender.mem[_3075 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3075 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3075 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3075 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3075 + 496] = 32
                            mem[_3075 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3075 + idx + 560] = mem[_3075 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3075 + 592] = mem[_3075 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3075 + -mem[64] + 624
                        mem[64] = _3075 + ceil32(return_data.size) + 493
                        mem[_3075 + 492] = return_data.size
                        mem[_3075 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3075 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3075 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3075 + ceil32(return_data.size) + idx + 561] = mem[_3075 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3075 + ceil32(return_data.size) + 593] = mem[_3075 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3075 + ceil32(return_data.size) + 561 len 64]
                else:
                    stor23[stor25 - 1] = stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25]
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] = guitarsRemainingToAssign - 1
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3075 + 200
                    mem[_3075 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3075 + 236] = msg.sender
                        mem[_3075 + 268] = 0
                        mem[_3075 + 300] = stor23[stor25 - 1]
                        mem[_3075 + 332] = 128
                        mem[_3075 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3075 + s + 396] = mem[_3075 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3075 + 200] = 164
                        mem[_3075 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3075 + 492
                        mem[_3075 + 396] = 50
                        mem[_3075 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3075 + 232
                        t = _3075 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3075 + 652] = 0 or Mask(224, 32, mem[_3075 + 652])
                        call msg.sender.mem[_3075 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3075 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3075 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3075 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3075 + 496] = 32
                            mem[_3075 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3075 + idx + 560] = mem[_3075 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3075 + 592] = mem[_3075 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3075 + -mem[64] + 624
                        mem[64] = _3075 + ceil32(return_data.size) + 493
                        mem[_3075 + 492] = return_data.size
                        mem[_3075 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3075 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3075 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3075 + ceil32(return_data.size) + idx + 561] = mem[_3075 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3075 + ceil32(return_data.size) + 593] = mem[_3075 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3075 + ceil32(return_data.size) + 561 len 64]
                ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor25', 25))), ('name', 'stor23', 23))), ('name', 'stor12', 12))))
                mem[64] = _3075 + 264
                mem[_3075 + 200] = stor23[stor25 - 1]
                mem[_3075 + 232] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = stor23[stor25 - 1]
                mem[32] = 12
                stor12[stor23[stor25 - 1]] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                mem[_3075 + 300] = msg.sender
                mem[_3075 + 332] = 0
                mem[_3075 + 364] = stor23[stor25 - 1]
                mem[_3075 + 396] = 128
                mem[_3075 + 428] = 0
                s = 0
                while s < 0:
                    mem[_3075 + s + 460] = mem[_3075 + s + 200]
                    s = s + 32
                    continue 
                mem[_3075 + 264] = 164
                mem[_3075 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3075 + 556
                mem[_3075 + 460] = 50
                mem[_3075 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 662 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                t = _3075 + 296
                u = _3075 + 556
                s = 164
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_3075 + 716] = 0 or Mask(224, 32, mem[_3075 + 716])
                call msg.sender.mem[_3075 + 556 len 4] with:
                     gas gas_remaining wei
                    args mem[_3075 + 560 len 160]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3075 + 674 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3075 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3075 + 560] = 32
                    mem[_3075 + 592] = 50
                    idx = 0
                    while idx < 50:
                        mem[_3075 + idx + 624] = mem[_3075 + idx + 492]
                        idx = idx + 32
                        continue 
                    mem[_3075 + 656] = mem[_3075 + 670 len 18]
                    revert with memory
                      from mem[64]
                       len _3075 + -mem[64] + 688
                mem[64] = _3075 + ceil32(return_data.size) + 557
                mem[_3075 + 556] = return_data.size
                mem[_3075 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3075 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3075 + ceil32(return_data.size) + 675 len 14]
                    idx = idx + 1
                    continue 
            else:
                if stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] <= 0:
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] = stor23[stor25 - 1]
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3075 + 200
                    mem[_3075 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3075 + 236] = msg.sender
                        mem[_3075 + 268] = 0
                        mem[_3075 + 300] = stor23[stor25 - 1]
                        mem[_3075 + 332] = 128
                        mem[_3075 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3075 + s + 396] = mem[_3075 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3075 + 200] = 164
                        mem[_3075 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3075 + 492
                        mem[_3075 + 396] = 50
                        mem[_3075 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3075 + 232
                        t = _3075 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3075 + 652] = 0 or Mask(224, 32, mem[_3075 + 652])
                        call msg.sender.mem[_3075 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3075 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3075 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3075 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3075 + 496] = 32
                            mem[_3075 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3075 + idx + 560] = mem[_3075 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3075 + 592] = mem[_3075 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3075 + -mem[64] + 624
                        mem[64] = _3075 + ceil32(return_data.size) + 493
                        mem[_3075 + 492] = return_data.size
                        mem[_3075 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3075 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3075 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3075 + ceil32(return_data.size) + idx + 561] = mem[_3075 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3075 + ceil32(return_data.size) + 593] = mem[_3075 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3075 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3075 + 264
                    mem[_3075 + 200] = stor23[stor25 - 1]
                    mem[_3075 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor23[stor25 - 1]
                    mem[32] = 12
                    stor12[stor23[stor25 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3075 + 300] = msg.sender
                    mem[_3075 + 332] = 0
                    mem[_3075 + 364] = stor23[stor25 - 1]
                    mem[_3075 + 396] = 128
                    mem[_3075 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3075 + s + 460] = mem[_3075 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3075 + 264] = 164
                    mem[_3075 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3075 + 556
                    mem[_3075 + 460] = 50
                    mem[_3075 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    t = _3075 + 296
                    u = _3075 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_3075 + 716] = 0 or Mask(224, 32, mem[_3075 + 716])
                    call msg.sender.mem[_3075 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3075 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3075 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + 560] = 32
                        mem[_3075 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3075 + idx + 624] = mem[_3075 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3075 + 656] = mem[_3075 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3075 + -mem[64] + 688
                    mem[64] = _3075 + ceil32(return_data.size) + 557
                    mem[_3075 + 556] = return_data.size
                    mem[_3075 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3075 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3075 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    stor23[stor25 - 1] = stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25]
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3078 / block.timestamp) + block.number) / stor25 % stor25] = stor23[stor25 - 1]
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3075 + 200
                    mem[_3075 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3075 + 236] = msg.sender
                        mem[_3075 + 268] = 0
                        mem[_3075 + 300] = stor23[stor25 - 1]
                        mem[_3075 + 332] = 128
                        mem[_3075 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3075 + s + 396] = mem[_3075 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3075 + 200] = 164
                        mem[_3075 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3075 + 492
                        mem[_3075 + 396] = 50
                        mem[_3075 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3075 + 232
                        u = _3075 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3075 + 652] = 0 or Mask(224, 32, mem[_3075 + 652])
                        call msg.sender.mem[_3075 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3075 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3075 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3075 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3075 + 496] = 32
                            mem[_3075 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3075 + idx + 560] = mem[_3075 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3075 + 592] = mem[_3075 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3075 + -mem[64] + 624
                        mem[64] = _3075 + ceil32(return_data.size) + 493
                        mem[_3075 + 492] = return_data.size
                        mem[_3075 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3075 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3075 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3075 + ceil32(return_data.size) + idx + 561] = mem[_3075 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3075 + ceil32(return_data.size) + 593] = mem[_3075 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3075 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3075 + 264
                    mem[_3075 + 200] = stor23[stor25 - 1]
                    mem[_3075 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor23[stor25 - 1]
                    mem[32] = 12
                    stor12[stor23[stor25 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3075 + 300] = msg.sender
                    mem[_3075 + 332] = 0
                    mem[_3075 + 364] = stor23[stor25 - 1]
                    mem[_3075 + 396] = 128
                    mem[_3075 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3075 + s + 460] = mem[_3075 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3075 + 264] = 164
                    mem[_3075 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3075 + 556
                    mem[_3075 + 460] = 50
                    mem[_3075 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3075 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    s = _3075 + 296
                    t = _3075 + 556
                    idx = 164
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_3075 + 716] = 0 or Mask(224, 32, mem[_3075 + 716])
                    call msg.sender.mem[_3075 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3075 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3075 + 674 len 14]
                            s = 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3075 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3075 + 560] = 32
                        mem[_3075 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3075 + idx + 624] = mem[_3075 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3075 + 656] = mem[_3075 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3075 + -mem[64] + 688
                    mem[64] = _3075 + ceil32(return_data.size) + 557
                    mem[_3075 + 556] = return_data.size
                    mem[_3075 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3075 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3075 + ceil32(return_data.size) + 675 len 14]
                        s = 1
                        continue 
            ('iszero', 'ext_call.success')
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3075 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3075 + ceil32(return_data.size) + 561] = 32
            idx = 0
            while idx < 50:
                mem[_3075 + ceil32(return_data.size) + idx + 625] = mem[_3075 + idx + 492]
                idx = idx + 32
                continue 
            mem[_3075 + ceil32(return_data.size) + 657] = mem[_3075 + ceil32(return_data.size) + 671 len 18]
            revert with 0, 32, 50, mem[_3075 + ceil32(return_data.size) + 625 len 64]
    else:
        require arg1
        if arg1 * _price / arg1 != _price:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 * _price != msg.value:
            revert with 0, 'Amount of AVAX is not correct.'
        if _saleStarted != 1:
            revert with 0, 'Sale Not Started'
        call stor28 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < arg1:
            _3071 = mem[64]
            mem[mem[64] + 32] = address(msg.sender)
            _3072 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _3074 = sha3(mem[_3072 + 32 len mem[_3072]])
            require block.timestamp
            mem[_3071 + 84] = address(block.coinbase)
            mem[_3071 + 52] = 20
            mem[_3071 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number
            mem[_3071 + 104] = 32
            require guitarsRemainingToAssign
            guitarsRemainingToAssign--
            stor23[stor25 - 1] = sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / guitarsRemainingToAssign % guitarsRemainingToAssign
            if stor23[stor25 - 1] <= 0:
                if stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] <= 0:
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] = guitarsRemainingToAssign - 1
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3071 + 200
                    mem[_3071 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3071 + 236] = msg.sender
                        mem[_3071 + 268] = 0
                        mem[_3071 + 300] = stor23[stor25 - 1]
                        mem[_3071 + 332] = 128
                        mem[_3071 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3071 + s + 396] = mem[_3071 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3071 + 200] = 164
                        mem[_3071 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3071 + 492
                        mem[_3071 + 396] = 50
                        mem[_3071 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3071 + 232
                        u = _3071 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3071 + 652] = 0 or Mask(224, 32, mem[_3071 + 652])
                        call msg.sender.mem[_3071 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3071 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3071 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3071 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3071 + 496] = 32
                            mem[_3071 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3071 + idx + 560] = mem[_3071 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3071 + 592] = mem[_3071 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3071 + -mem[64] + 624
                        mem[64] = _3071 + ceil32(return_data.size) + 493
                        mem[_3071 + 492] = return_data.size
                        mem[_3071 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3071 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3071 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3071 + ceil32(return_data.size) + idx + 561] = mem[_3071 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3071 + ceil32(return_data.size) + 593] = mem[_3071 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3071 + ceil32(return_data.size) + 561 len 64]
                else:
                    stor23[stor25 - 1] = stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25]
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] = guitarsRemainingToAssign - 1
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3071 + 200
                    mem[_3071 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3071 + 236] = msg.sender
                        mem[_3071 + 268] = 0
                        mem[_3071 + 300] = stor23[stor25 - 1]
                        mem[_3071 + 332] = 128
                        mem[_3071 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3071 + s + 396] = mem[_3071 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3071 + 200] = 164
                        mem[_3071 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3071 + 492
                        mem[_3071 + 396] = 50
                        mem[_3071 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3071 + 232
                        t = _3071 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3071 + 652] = 0 or Mask(224, 32, mem[_3071 + 652])
                        call msg.sender.mem[_3071 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3071 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3071 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3071 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3071 + 496] = 32
                            mem[_3071 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3071 + idx + 560] = mem[_3071 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3071 + 592] = mem[_3071 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3071 + -mem[64] + 624
                        mem[64] = _3071 + ceil32(return_data.size) + 493
                        mem[_3071 + 492] = return_data.size
                        mem[_3071 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3071 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3071 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3071 + ceil32(return_data.size) + idx + 561] = mem[_3071 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3071 + ceil32(return_data.size) + 593] = mem[_3071 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3071 + ceil32(return_data.size) + 561 len 64]
                ('iszero', ('stor', ('map', ('stor', ('map', ('add', -1, ('stor', ('name', 'stor25', 25))), ('name', 'stor23', 23))), ('name', 'stor12', 12))))
                mem[64] = _3071 + 264
                mem[_3071 + 200] = stor23[stor25 - 1]
                mem[_3071 + 232] = msg.sender
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                tokenByIndex[tokenByIndex.length].field_416 = 0
                mem[0] = stor23[stor25 - 1]
                mem[32] = 12
                stor12[stor23[stor25 - 1]] = tokenByIndex.length
                emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                mem[_3071 + 300] = msg.sender
                mem[_3071 + 332] = 0
                mem[_3071 + 364] = stor23[stor25 - 1]
                mem[_3071 + 396] = 128
                mem[_3071 + 428] = 0
                s = 0
                while s < 0:
                    mem[_3071 + s + 460] = mem[_3071 + s + 200]
                    s = s + 32
                    continue 
                mem[_3071 + 264] = 164
                mem[_3071 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _3071 + 556
                mem[_3071 + 460] = 50
                mem[_3071 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 662 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                t = _3071 + 296
                u = _3071 + 556
                s = 164
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_3071 + 716] = 0 or Mask(224, 32, mem[_3071 + 716])
                call msg.sender.mem[_3071 + 556 len 4] with:
                     gas gas_remaining wei
                    args mem[_3071 + 560 len 160]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3071 + 674 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_3071 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3071 + 560] = 32
                    mem[_3071 + 592] = 50
                    idx = 0
                    while idx < 50:
                        mem[_3071 + idx + 624] = mem[_3071 + idx + 492]
                        idx = idx + 32
                        continue 
                    mem[_3071 + 656] = mem[_3071 + 670 len 18]
                    revert with memory
                      from mem[64]
                       len _3071 + -mem[64] + 688
                mem[64] = _3071 + ceil32(return_data.size) + 557
                mem[_3071 + 556] = return_data.size
                mem[_3071 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3071 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_3071 + ceil32(return_data.size) + 675 len 14]
                    idx = idx + 1
                    continue 
            else:
                if stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] <= 0:
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] = stor23[stor25 - 1]
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3071 + 200
                    mem[_3071 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3071 + 236] = msg.sender
                        mem[_3071 + 268] = 0
                        mem[_3071 + 300] = stor23[stor25 - 1]
                        mem[_3071 + 332] = 128
                        mem[_3071 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3071 + s + 396] = mem[_3071 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3071 + 200] = 164
                        mem[_3071 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3071 + 492
                        mem[_3071 + 396] = 50
                        mem[_3071 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        s = _3071 + 232
                        t = _3071 + 492
                        idx = 164
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[_3071 + 652] = 0 or Mask(224, 32, mem[_3071 + 652])
                        call msg.sender.mem[_3071 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3071 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3071 + 610 len 14]
                                s = 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3071 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3071 + 496] = 32
                            mem[_3071 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3071 + idx + 560] = mem[_3071 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3071 + 592] = mem[_3071 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3071 + -mem[64] + 624
                        mem[64] = _3071 + ceil32(return_data.size) + 493
                        mem[_3071 + 492] = return_data.size
                        mem[_3071 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3071 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + ceil32(return_data.size) + 611 len 14]
                            s = 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3071 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3071 + ceil32(return_data.size) + idx + 561] = mem[_3071 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3071 + ceil32(return_data.size) + 593] = mem[_3071 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3071 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3071 + 264
                    mem[_3071 + 200] = stor23[stor25 - 1]
                    mem[_3071 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor23[stor25 - 1]
                    mem[32] = 12
                    stor12[stor23[stor25 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3071 + 300] = msg.sender
                    mem[_3071 + 332] = 0
                    mem[_3071 + 364] = stor23[stor25 - 1]
                    mem[_3071 + 396] = 128
                    mem[_3071 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3071 + s + 460] = mem[_3071 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3071 + 264] = 164
                    mem[_3071 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3071 + 556
                    mem[_3071 + 460] = 50
                    mem[_3071 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    t = _3071 + 296
                    u = _3071 + 556
                    s = 164
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_3071 + 716] = 0 or Mask(224, 32, mem[_3071 + 716])
                    call msg.sender.mem[_3071 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3071 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + 674 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3071 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + 560] = 32
                        mem[_3071 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3071 + idx + 624] = mem[_3071 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3071 + 656] = mem[_3071 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3071 + -mem[64] + 688
                    mem[64] = _3071 + ceil32(return_data.size) + 557
                    mem[_3071 + 556] = return_data.size
                    mem[_3071 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3071 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3071 + ceil32(return_data.size) + 675 len 14]
                        idx = idx + 1
                        continue 
                else:
                    stor23[stor25 - 1] = stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25]
                    stor23[sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + (_3074 / block.timestamp) + block.number) / stor25 % stor25] = stor23[stor25 - 1]
                    minter[stor23[stor25 - 1]] = msg.sender
                    mem[64] = _3071 + 200
                    mem[_3071 + 168] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if stor12[stor23[stor25 - 1]]:
                        revert with 0, 'ERC721: token already minted'
                    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]]:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor23[stor25 - 1]
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor23[stor25 - 1]] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[32] = 12
                    if stor12[stor23[stor25 - 1]]:
                        require stor12[stor23[stor25 - 1]] - 1 < tokenByIndex.length
                        mem[0] = 11
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_256 = msg.sender
                        tokenByIndex[stor12[stor23[stor25 - 1]] - 1].field_416 = 0
                        emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                        if ext_code.size(msg.sender) <= 0:
                            idx = idx + 1
                            continue 
                        mem[_3071 + 236] = msg.sender
                        mem[_3071 + 268] = 0
                        mem[_3071 + 300] = stor23[stor25 - 1]
                        mem[_3071 + 332] = 128
                        mem[_3071 + 364] = 0
                        s = 0
                        while s < 0:
                            mem[_3071 + s + 396] = mem[_3071 + s + 200]
                            s = s + 32
                            continue 
                        mem[_3071 + 200] = 164
                        mem[_3071 + 232] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _3071 + 492
                        mem[_3071 + 396] = 50
                        mem[_3071 + 428 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 598 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        t = _3071 + 232
                        u = _3071 + 492
                        s = 164
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_3071 + 652] = 0 or Mask(224, 32, mem[_3071 + 652])
                        call msg.sender.mem[_3071 + 492 len 4] with:
                             gas gas_remaining wei
                            args mem[_3071 + 496 len 160]
                        if not return_data.size:
                            if ext_call.success:
                                require mem[96] >= 32
                                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 
                                                32,
                                                50,
                                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                                mem[_3071 + 610 len 14]
                                idx = idx + 1
                                continue 
                            if mem[96] > 0:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_3071 + 492] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3071 + 496] = 32
                            mem[_3071 + 528] = 50
                            idx = 0
                            while idx < 50:
                                mem[_3071 + idx + 560] = mem[_3071 + idx + 428]
                                idx = idx + 32
                                continue 
                            mem[_3071 + 592] = mem[_3071 + 606 len 18]
                            revert with memory
                              from mem[64]
                               len _3071 + -mem[64] + 624
                        mem[64] = _3071 + ceil32(return_data.size) + 493
                        mem[_3071 + 492] = return_data.size
                        mem[_3071 + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            require return_data.size >= 32
                            if Mask(32, 224, mem[_3071 + 524]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + ceil32(return_data.size) + 611 len 14]
                            idx = idx + 1
                            continue 
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_3071 + ceil32(return_data.size) + 493] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + ceil32(return_data.size) + 497] = 32
                        idx = 0
                        while idx < 50:
                            mem[_3071 + ceil32(return_data.size) + idx + 561] = mem[_3071 + idx + 428]
                            idx = idx + 32
                            continue 
                        mem[_3071 + ceil32(return_data.size) + 593] = mem[_3071 + ceil32(return_data.size) + 607 len 18]
                        revert with 0, 32, 50, mem[_3071 + ceil32(return_data.size) + 561 len 64]
                    mem[64] = _3071 + 264
                    mem[_3071 + 200] = stor23[stor25 - 1]
                    mem[_3071 + 232] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = stor23[stor25 - 1]
                    tokenByIndex[tokenByIndex.length].field_256 = msg.sender
                    tokenByIndex[tokenByIndex.length].field_416 = 0
                    mem[0] = stor23[stor25 - 1]
                    mem[32] = 12
                    stor12[stor23[stor25 - 1]] = tokenByIndex.length
                    emit Transfer(0, msg.sender, stor23[stor25 - 1]);
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    mem[_3071 + 300] = msg.sender
                    mem[_3071 + 332] = 0
                    mem[_3071 + 364] = stor23[stor25 - 1]
                    mem[_3071 + 396] = 128
                    mem[_3071 + 428] = 0
                    s = 0
                    while s < 0:
                        mem[_3071 + s + 460] = mem[_3071 + s + 200]
                        s = s + 32
                        continue 
                    mem[_3071 + 264] = 164
                    mem[_3071 + 296] = Mask(224, 32, msg.sender) >> 32 or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _3071 + 556
                    mem[_3071 + 460] = 50
                    mem[_3071 + 492 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3071 + 662 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    s = _3071 + 296
                    t = _3071 + 556
                    idx = 164
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[_3071 + 716] = 0 or Mask(224, 32, mem[_3071 + 716])
                    call msg.sender.mem[_3071 + 556 len 4] with:
                         gas gas_remaining wei
                        args mem[_3071 + 560 len 160]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_3071 + 674 len 14]
                            s = 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_3071 + 556] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3071 + 560] = 32
                        mem[_3071 + 592] = 50
                        idx = 0
                        while idx < 50:
                            mem[_3071 + idx + 624] = mem[_3071 + idx + 492]
                            idx = idx + 32
                            continue 
                        mem[_3071 + 656] = mem[_3071 + 670 len 18]
                        revert with memory
                          from mem[64]
                           len _3071 + -mem[64] + 688
                    mem[64] = _3071 + ceil32(return_data.size) + 557
                    mem[_3071 + 556] = return_data.size
                    mem[_3071 + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3071 + 588]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_3071 + ceil32(return_data.size) + 675 len 14]
                        s = 1
                        continue 
            ('iszero', 'ext_call.success')
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_3071 + ceil32(return_data.size) + 557] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3071 + ceil32(return_data.size) + 561] = 32
            idx = 0
            while idx < 50:
                mem[_3071 + ceil32(return_data.size) + idx + 625] = mem[_3071 + idx + 492]
                idx = idx + 32
                continue 
            mem[_3071 + ceil32(return_data.size) + 657] = mem[_3071 + ceil32(return_data.size) + 671 len 18]
            revert with 0, 32, 50, mem[_3071 + ceil32(return_data.size) + 625 len 64]
}



}
