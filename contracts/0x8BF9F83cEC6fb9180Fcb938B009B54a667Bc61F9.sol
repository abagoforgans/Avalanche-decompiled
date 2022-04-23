contract main {




// =====================  Runtime code  =====================


#
#  - mintToken(uint256 arg1)
#
const getBalance = eth.balance(this.address)

const calculateReflectionShare = 5

const MAX_SUPPLY = 10000

const MAX_TOKEN_MINT = 50


array of uint256 name;
array of uint256 symbol;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
address owner;
uint256 stor11;
uint256 sub_a0cebfa7;
array of uint256 provenance;
uint8 stor14;
uint256 stor14;
array of struct stor15;
uint256 tokensReserve;
address sub_f11fc197Address;
address sub_ffd69c0eAddress;
address sub_eaa60742Address;
uint256 reflectionBalance;
uint256 totalDividend;
mapping of uint256 stor23;
mapping of address minterOf;

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function provenance() {
    return provenance[0 len provenance.length]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x74455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function reflectionBalance() {
    return reflectionBalance
}

function totalDividend() {
    return totalDividend
}

function minted() {
    return sub_a0cebfa7
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function minterOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6f6c20417661436174733a20746f6b656e20646f6573206e6f74206578697374,
                    mem[199 len 29]
    return minterOf[arg1]
}

function sub_a0cebfa7(?) {
    return sub_a0cebfa7
}

function tokensReserve() {
    return tokensReserve
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_eaa60742(?) {
    return sub_eaa60742Address
}

function saleIsActive() {
    return bool(uint8(stor14))
}

function sub_f11fc197(?) {
    return sub_f11fc197Address
}

function sub_ffd69c0e(?) {
    return sub_ffd69c0eAddress
}

function _fallback() payable {
  stop
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    return (totalDividend - stor23[arg1])
}

function currentRate() {
    if not sub_a0cebfa7:
        return 0
    require sub_a0cebfa7
    return (reflectionBalance / sub_a0cebfa7)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f11fc197Address = arg1
}

function switchSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14) = not bool(uint8(stor14)) or Mask(248, 8, uint256(stor14))
}

function tokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < 0:
        revert with 0, 'Cool Avacats: invalid range'
    if arg1 >= 10000:
        revert with 0, 'Cool Avacats: invalid range'
    return 25 * 10^17
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function withdrawBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setProvenance(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    provenance[] = Array(len=arg1.length, data=arg1[all])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x744552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x734552433732314275726e61626c653a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[212 len 16]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor9[arg1] < tokenByIndex.length
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    require tokenByIndex.length
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg1], 0, arg1);
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    require ext_code.size(sub_f11fc197Address)
    call sub_f11fc197Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 50 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reserveTokens(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6e436f6f6c20417661636174733a206e6f7420656e6f7567682072657365727665206c6566,
                    mem[201 len 27]
    if arg2 > tokensReserve:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6e436f6f6c20417661636174733a206e6f7420656e6f7567682072657365727665206c6566,
                    mem[201 len 27]
    idx = 0
    while arg2 > idx:
        _99 = mem[64]
        mem[64] = mem[64] + 32
        mem[_99] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
        else:
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor9[stor8.length + idx] < tokenByIndex.length
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            require tokenByIndex.length
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        balanceOf[address(arg1)]++
        mem[0] = tokenByIndex.length + idx
        mem[32] = 2
        ownerOf[stor8.length + idx] = arg1
        emit Transfer(0, arg1, tokenByIndex.length + idx);
        if ext_code.size(arg1) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = tokenByIndex.length + idx
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_99 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(arg1)
            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, tokenByIndex.length + idx, 128, 0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if not return_data.size:
                    if not mem[96]:
                        revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
                    revert with memory
                      from 128
                       len mem[96]
                if not return_data.size:
                    revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
        idx = idx + 1
        continue 
    tokensReserve -= arg2
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
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[206 len 22]
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x74455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                        mem[207 len 21]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 23
        idx = idx + 1
        s = s + totalDividend - stor23[stor6[address(msg.sender)][idx]]
        continue 
    return (s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 41, 0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor9[arg3] < tokenByIndex.length
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
            if not return_data.size:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 247 len 14]
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[206 len 22]
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[206 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor9[arg3] < tokenByIndex.length
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x644552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    41,
                    0x6e4552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 237 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 238 len 22]
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 238 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor9[arg3] < tokenByIndex.length
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 228] = 128
        mem[ceil32(arg4.length) + 260] = arg4.length
        mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 247 len 14]
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'sERC721: transfer to non ERC721Receiver implemente'
}

function claimRewards() {
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[206 len 22]
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x74455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                        mem[207 len 21]
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 23
        stor23[stor6[address(msg.sender)][idx]] = totalDividend
        idx = idx + 1
        s = s + totalDividend - stor23[stor6[address(msg.sender)][idx]]
        continue 
    if eth.balance(this.address) < s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
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
    stor11 = 1
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = stor15.length
    mem[0] = 15
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while stor15.length + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor15.length <= 0:
        return ''
    if not arg1:
        mem[64] = ceil32(stor15.length) + 192
        mem[ceil32(stor15.length) + 128] = 1
        mem[ceil32(stor15.length) + 160] = '0'
        mem[ceil32(stor15.length) + 224 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
        mem[ceil32(stor15.length) + floor32(stor15.length) + 224] = mem[floor32(stor15.length) + -stor15.length % 32 + 160 len stor15.length % 32] or Mask(8 * -stor15.length % 32 + 32, -(8 * -stor15.length % 32 + 32) + 256, mem[ceil32(stor15.length) + floor32(stor15.length) + 224])
        mem[stor15.length + ceil32(stor15.length) + 224 len 0] = None
        mem[stor15.length + ceil32(stor15.length) + 225] = 32
        mem[stor15.length + ceil32(stor15.length) + 257] = mem[ceil32(stor15.length) + 192]
        mem[stor15.length + ceil32(stor15.length) + 289 len ceil32(mem[ceil32(stor15.length) + 192])] = mem[ceil32(stor15.length) + 224 len ceil32(mem[ceil32(stor15.length) + 192])]
        if not mem[ceil32(stor15.length) + 192] % 32:
            return 32, mem[stor15.length + ceil32(stor15.length) + 257 len mem[ceil32(stor15.length) + 192] + 32]
        mem[floor32(mem[ceil32(stor15.length) + 192]) + stor15.length + ceil32(stor15.length) + 289] = mem[floor32(mem[ceil32(stor15.length) + 192]) + stor15.length + ceil32(stor15.length) + -(mem[ceil32(stor15.length) + 192] % 32) + 321 len mem[ceil32(stor15.length) + 192] % 32]
        return Array(len=mem[ceil32(stor15.length) + 192], data=mem[stor15.length + ceil32(stor15.length) + 289 len floor32(mem[ceil32(stor15.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor15.length) + 128] = s
    mem[64] = ceil32(stor15.length) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[ceil32(stor15.length) + 128]
            mem[t + ceil32(stor15.length) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length) + ceil32(s) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
        mem[ceil32(stor15.length) + ceil32(s) + floor32(stor15.length) + -stor15.length % 32 + 224 len stor15.length % 32] = mem[floor32(stor15.length) + -stor15.length % 32 + 160 len stor15.length % 32]
        mem[stor15.length + ceil32(stor15.length) + ceil32(s) + 192 len floor32(mem[ceil32(stor15.length) + 128])] = mem[ceil32(stor15.length) + 160 len floor32(mem[ceil32(stor15.length) + 128])]
        mem[stor15.length + ceil32(stor15.length) + ceil32(s) + floor32(mem[ceil32(stor15.length) + 128]) + -(mem[ceil32(stor15.length) + 128] % 32) + 224 len mem[ceil32(stor15.length) + 128] % 32] = mem[ceil32(stor15.length) + floor32(mem[ceil32(stor15.length) + 128]) + -(mem[ceil32(stor15.length) + 128] % 32) + 192 len mem[ceil32(stor15.length) + 128] % 32]
        mem[64] = mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 192
        mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 192] = 32
        mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224] = mem[ceil32(stor15.length) + ceil32(s) + 160]
        _593 = mem[ceil32(stor15.length) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 256 len ceil32(mem[ceil32(stor15.length) + ceil32(s) + 160])] = mem[ceil32(stor15.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length) + ceil32(s) + 160])]
        if not mem[ceil32(stor15.length) + ceil32(s) + 160] % 32:
            return 32, mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224 len mem[ceil32(stor15.length) + ceil32(s) + 160] + 32], 
        mem[floor32(mem[ceil32(stor15.length) + ceil32(s) + 160]) + mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 256] = mem[floor32(mem[ceil32(stor15.length) + ceil32(s) + 160]) + mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + -(mem[ceil32(stor15.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(stor15.length) + ceil32(s) + 160] % 32]
        return 32, mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224 len floor32(_593) + 64], 
    mem[ceil32(stor15.length) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[ceil32(stor15.length) + 128]
        mem[t + ceil32(stor15.length) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor15.length) + ceil32(s) + 192 len floor32(stor15.length)] = mem[128 len floor32(stor15.length)]
    mem[ceil32(stor15.length) + ceil32(s) + floor32(stor15.length) + -stor15.length % 32 + 224 len stor15.length % 32] = mem[floor32(stor15.length) + -stor15.length % 32 + 160 len stor15.length % 32]
    mem[stor15.length + ceil32(stor15.length) + ceil32(s) + 192 len floor32(mem[ceil32(stor15.length) + 128])] = mem[ceil32(stor15.length) + 160 len floor32(mem[ceil32(stor15.length) + 128])]
    mem[stor15.length + ceil32(stor15.length) + ceil32(s) + floor32(mem[ceil32(stor15.length) + 128]) + -(mem[ceil32(stor15.length) + 128] % 32) + 224 len mem[ceil32(stor15.length) + 128] % 32] = mem[ceil32(stor15.length) + floor32(mem[ceil32(stor15.length) + 128]) + -(mem[ceil32(stor15.length) + 128] % 32) + 192 len mem[ceil32(stor15.length) + 128] % 32]
    mem[64] = mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 192
    mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 192] = 32
    mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224] = mem[ceil32(stor15.length) + ceil32(s) + 160]
    _596 = mem[ceil32(stor15.length) + ceil32(s) + 160]
    mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 256 len ceil32(mem[ceil32(stor15.length) + ceil32(s) + 160])] = mem[ceil32(stor15.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor15.length) + ceil32(s) + 160])]
    if not mem[ceil32(stor15.length) + ceil32(s) + 160] % 32:
        return 32, mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224 len mem[ceil32(stor15.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(stor15.length) + ceil32(s) + 160]) + mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 256] = mem[floor32(mem[ceil32(stor15.length) + ceil32(s) + 160]) + mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + -(mem[ceil32(stor15.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(stor15.length) + ceil32(s) + 160] % 32]
    return 32, mem[mem[ceil32(stor15.length) + 128] + stor15.length + ceil32(stor15.length) + ceil32(s) + 224 len floor32(_596) + 64], 
}



}
