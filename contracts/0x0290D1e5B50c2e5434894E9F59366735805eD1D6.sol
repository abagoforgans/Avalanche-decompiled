contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const max_mintable = 2500


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
uint256 stor10;
address owner;
uint256 minted;
uint256 LATEST_CLAIMED_ID;
uint256 claimPrice;
mapping of uint8 stor15;
uint8 stor16;
uint256 stor16;
array of struct stor17;

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

function claimPrice() {
    return claimPrice
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
                    0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function getNumMinted() {
    return minted
}

function minted() {
    return minted
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

function canClaim() {
    return bool(uint8(stor16))
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

function claimedTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function LATEST_CLAIMED_ID() {
    return LATEST_CLAIMED_ID
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function flipState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor16) = not bool(uint8(stor16)) or Mask(248, 8, uint256(stor16))
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

function set_base_uri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
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
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
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

function claim(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor10 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor10 = 2
    if not uint8(stor16):
        revert with 0, 'claim has not started yet.'
    require arg1 > 0
    require arg1 <= 40
    require arg1 <= -minted + 2500
    require msg.value >= claimPrice * arg1
    call this.address with:
       value claimPrice * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        minted++
        _103 = mem[64]
        mem[64] = mem[64] + 32
        mem[_103] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor12] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = minted
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = minted
            stor7[stor12] = balanceOf[address(msg.sender)]
        else:
            require tokenByIndex.length - 1 < tokenByIndex.length
            require stor9[stor12] < tokenByIndex.length
            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor12]
            stor9[stor12] = 0
            require tokenByIndex.length
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        balanceOf[address(msg.sender)]++
        mem[0] = minted
        mem[32] = 2
        ownerOf[stor12] = msg.sender
        emit Transfer(0, msg.sender, minted);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = minted
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_103 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.0x150b7a02 with:
                 gas gas_remaining wei
                args msg.sender, 0, minted, 128, 0
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
    LATEST_CLAIMED_ID = minted - 1
    call msg.sender with:
       value msg.value - (claimPrice * arg1) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = 1
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
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
        call arg2.0x150b7a02 with:
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
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = stor17.length
    mem[0] = 17
    mem[128] = uint256(stor17.field_0)
    idx = 128
    s = 0
    while stor17.length + 96 > idx:
        mem[idx + 32] = stor17[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor17.length <= 0:
        return ''
    if not arg1:
        mem[64] = ceil32(stor17.length) + 192
        mem[ceil32(stor17.length) + 128] = 1
        mem[ceil32(stor17.length) + 160] = '0'
        mem[ceil32(stor17.length) + 224 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
        mem[ceil32(stor17.length) + floor32(stor17.length) + 224] = mem[floor32(stor17.length) + -stor17.length % 32 + 160 len stor17.length % 32] or Mask(8 * -stor17.length % 32 + 32, -(8 * -stor17.length % 32 + 32) + 256, mem[ceil32(stor17.length) + floor32(stor17.length) + 224])
        mem[stor17.length + ceil32(stor17.length) + 224 len 0] = None
        mem[stor17.length + ceil32(stor17.length) + 225] = 32
        mem[stor17.length + ceil32(stor17.length) + 257] = mem[ceil32(stor17.length) + 192]
        mem[stor17.length + ceil32(stor17.length) + 289 len ceil32(mem[ceil32(stor17.length) + 192])] = mem[ceil32(stor17.length) + 224 len ceil32(mem[ceil32(stor17.length) + 192])]
        if not mem[ceil32(stor17.length) + 192] % 32:
            return 32, mem[stor17.length + ceil32(stor17.length) + 257 len mem[ceil32(stor17.length) + 192] + 32]
        mem[floor32(mem[ceil32(stor17.length) + 192]) + stor17.length + ceil32(stor17.length) + 289] = mem[floor32(mem[ceil32(stor17.length) + 192]) + stor17.length + ceil32(stor17.length) + -(mem[ceil32(stor17.length) + 192] % 32) + 321 len mem[ceil32(stor17.length) + 192] % 32]
        return Array(len=mem[ceil32(stor17.length) + 192], data=mem[stor17.length + ceil32(stor17.length) + 289 len floor32(mem[ceil32(stor17.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor17.length) + 128] = s
    mem[64] = ceil32(stor17.length) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[ceil32(stor17.length) + 128]
            mem[t + ceil32(stor17.length) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor17.length) + ceil32(s) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
        mem[ceil32(stor17.length) + ceil32(s) + floor32(stor17.length) + -stor17.length % 32 + 224 len stor17.length % 32] = mem[floor32(stor17.length) + -stor17.length % 32 + 160 len stor17.length % 32]
        _501 = mem[ceil32(stor17.length) + 128]
        mem[stor17.length + ceil32(stor17.length) + ceil32(s) + 192 len floor32(mem[ceil32(stor17.length) + 128])] = mem[ceil32(stor17.length) + 160 len floor32(mem[ceil32(stor17.length) + 128])]
        mem[stor17.length + ceil32(stor17.length) + ceil32(s) + floor32(mem[ceil32(stor17.length) + 128]) + -(mem[ceil32(stor17.length) + 128] % 32) + 224 len mem[ceil32(stor17.length) + 128] % 32] = mem[ceil32(stor17.length) + floor32(mem[ceil32(stor17.length) + 128]) + -(mem[ceil32(stor17.length) + 128] % 32) + 192 len mem[ceil32(stor17.length) + 128] % 32]
        mem[64] = _501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 192
        mem[_501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 192] = 32
        mem[_501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 224] = mem[ceil32(stor17.length) + ceil32(s) + 160]
        mem[_501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256 len ceil32(mem[ceil32(stor17.length) + ceil32(s) + 160])] = mem[ceil32(stor17.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor17.length) + ceil32(s) + 160])]
        if not mem[ceil32(stor17.length) + ceil32(s) + 160] % 32:
            return 32, mem[_501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 224 len mem[ceil32(stor17.length) + ceil32(s) + 160] + 32], 
        mem[floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + _501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256] = mem[floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + _501 + stor17.length + ceil32(stor17.length) + ceil32(s) + -(mem[ceil32(stor17.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(stor17.length) + ceil32(s) + 160] % 32]
        return Array(len=mem[ceil32(stor17.length) + ceil32(s) + 160], data=mem[_501 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256 len floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + 32]), 
    mem[ceil32(stor17.length) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[ceil32(stor17.length) + 128]
        mem[t + ceil32(stor17.length) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor17.length) + ceil32(s) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
    mem[ceil32(stor17.length) + ceil32(s) + floor32(stor17.length) + -stor17.length % 32 + 224 len stor17.length % 32] = mem[floor32(stor17.length) + -stor17.length % 32 + 160 len stor17.length % 32]
    _505 = mem[ceil32(stor17.length) + 128]
    mem[stor17.length + ceil32(stor17.length) + ceil32(s) + 192 len floor32(mem[ceil32(stor17.length) + 128])] = mem[ceil32(stor17.length) + 160 len floor32(mem[ceil32(stor17.length) + 128])]
    mem[stor17.length + ceil32(stor17.length) + ceil32(s) + floor32(mem[ceil32(stor17.length) + 128]) + -(mem[ceil32(stor17.length) + 128] % 32) + 224 len mem[ceil32(stor17.length) + 128] % 32] = mem[ceil32(stor17.length) + floor32(mem[ceil32(stor17.length) + 128]) + -(mem[ceil32(stor17.length) + 128] % 32) + 192 len mem[ceil32(stor17.length) + 128] % 32]
    mem[64] = _505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 192
    mem[_505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 192] = 32
    mem[_505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 224] = mem[ceil32(stor17.length) + ceil32(s) + 160]
    mem[_505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256 len ceil32(mem[ceil32(stor17.length) + ceil32(s) + 160])] = mem[ceil32(stor17.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor17.length) + ceil32(s) + 160])]
    if not mem[ceil32(stor17.length) + ceil32(s) + 160] % 32:
        return 32, mem[_505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 224 len mem[ceil32(stor17.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + _505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256] = mem[floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + _505 + stor17.length + ceil32(stor17.length) + ceil32(s) + -(mem[ceil32(stor17.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(stor17.length) + ceil32(s) + 160] % 32]
    return Array(len=mem[ceil32(stor17.length) + ceil32(s) + 160], data=mem[_505 + stor17.length + ceil32(stor17.length) + ceil32(s) + 256 len floor32(mem[ceil32(stor17.length) + ceil32(s) + 160]) + 32]), 
}



}
