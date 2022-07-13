contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor6;
array of uint256 tokenByIndex;
mapping of uint256 stor8;
array of uint256 name;
array of uint256 symbol;
mapping of bool stor11;
address owner;
mapping of uint8 stor13;
mapping of uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor20;
uint256 stor21;
uint256 stor22;
array of struct stor23;
array of struct stor24;
uint8 revealed;
uint8 publicMintEnabled; offset 8
uint256 stor25; offset 8
uint256 merkleRoot;
mapping of uint8 stor27;
uint8 whitelistMintEnabled;
mapping of uint8 stor29;
uint8 paused;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6e4b495031373a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[207 len 21]
    return approved[arg1]
}

function publicMintEnabled() {
    return bool(publicMintEnabled)
}

function totalSupply() {
    return tokenByIndex.length
}

function merkleRoot() {
    return merkleRoot
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644b495031373a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[205 len 23]
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x734b49503137456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                    mem[206 len 22]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor29[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6e4b49503137456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[207 len 21]
    return tokenByIndex[arg1]
}

function revealed() {
    return bool(revealed)
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    return ownerOf[arg1]
}

function whitelistMintEnabled() {
    return bool(whitelistMintEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644b495031373a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[205 len 23]
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor13[address(arg1)])
}

function whitelistClaimed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_1dd8792b(?) {
    return stor15, stor16, stor17, stor18, stor20, stor21, stor22
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if msg.sender == arg1:
        revert with 0, 'KIP17: approve to caller'
    stor4[msg.sender][address(arg1)] = uint8(arg2)
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
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor29[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor29[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor13[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function reveal(bool arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    revealed = uint8(arg1)
}

function sub_818668d7(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    stor25 = Mask(248, 0, arg1)
}

function setMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    merkleRoot = arg1
}

function sub_b767a098(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    whitelistMintEnabled = uint8(arg1)
}

function pause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor29[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor29[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_a3867561(?) {
    require calldata.size - 4 >= 224
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    stor15 = arg1
    stor17 = arg2
    stor18 = arg3
    stor20 = arg4
    stor16 = arg5
    stor21 = arg6
    stor22 = arg7
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg1.length) + 244 len 16]
    stor23[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setNotRevealedURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + 230 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg1.length) + 244 len 16]
    stor24[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function withdraw() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if arg1 == ownerOf[arg2]:
        revert with 0, 'KIP17: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x6e4b495031373a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[219 len 9]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor29[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6e506175736572526f6c653a2063616c6c657220646f6573206e6f742068617665207468652050617573657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor29[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor29[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor13[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor13[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if not arg1:
        revert with 0, 'KIP17: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'KIP17: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    return 1
}

function sub_75a1ed08(?) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[212 len 16]
    if arg2 <= 0:
        revert with 0, 'zero request'
    idx = 0
    while idx < arg2:
        if not arg1:
            revert with 0, 'KIP17: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'KIP17: token already minted'
        ownerOf[stor16] = arg1
        balanceOf[address(arg1)]++
        emit Transfer(0, arg1, stor16);
        stor6[stor16] = tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = stor16
        mem[32] = 8
        stor8[stor16] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 7
        tokenByIndex[tokenByIndex.length] = stor16
        if stor16 + 1 < stor16:
            revert with 0, 'SafeMath: addition overflow'
        stor16++
        idx = idx + 1
        continue 
}

function mintWithTokenURI(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    34,
                    0x64526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    if not stor13[address(msg.sender)]:
        revert with 0, 
                    32,
                    48,
                    0x734d696e746572526f6c653a2063616c6c657220646f6573206e6f74206861766520746865204d696e74657220726f6c,
                    mem[ceil32(arg3.length) + 244 len 16]
    if not arg1:
        revert with 0, 'KIP17: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'KIP17: token already minted'
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(0, arg1, arg2);
    stor6[arg2] = tokenOfOwnerByIndex[address(arg1)]
    tokenOfOwnerByIndex[address(arg1)]++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = arg2
    stor8[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if not ownerOf[arg2]:
        revert with 0, 
                    32,
                    43,
                    0x6e4b495031374d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg3.length) + 239 len 21]
    uint256(stor11[arg2][]) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = 1
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
}

function publicMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not publicMintEnabled:
        revert with 0, 'The public sale is not enabled!'
    if stor15 + stor14[msg.sender] < stor14[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if stor15 + stor14[msg.sender] >= block.number:
        revert with 0, 'Bot is not allowed'
    if block.number < stor20:
        revert with 0, 'Not yet started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73546f6f206d616e79207265717565737473206f72207a65726f20726571756573,
                    mem[197 len 31]
    if arg1 > stor17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73546f6f206d616e79207265717565737473206f72207a65726f20726571756573,
                    mem[197 len 31]
    if not stor22:
        if msg.value:
            revert with 0, 'Not enough Klay'
    else:
        if arg1 * stor22 / stor22 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 * stor22 != msg.value:
            revert with 0, 'Not enough Klay'
    if arg1 + stor16 < stor16:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + stor16 > stor21 + 1:
        revert with 0, 'Exceed max amount'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x644b495031373a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[205 len 23]
    if balanceOf[address(msg.sender)] + arg1 > stor18:
        revert with 0, 'Exceed max amount per person'
    idx = 0
    while idx < arg1:
        if not msg.sender:
            revert with 0, 'KIP17: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'KIP17: token already minted'
        ownerOf[stor16] = msg.sender
        balanceOf[address(msg.sender)]++
        emit Transfer(0, msg.sender, stor16);
        stor6[stor16] = tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16
        mem[32] = 8
        stor8[stor16] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 7
        tokenByIndex[tokenByIndex.length] = stor16
        if stor16 + 1 < stor16:
            revert with 0, 'SafeMath: addition overflow'
        stor16++
        idx = idx + 1
        continue 
    stor14[msg.sender] = block.number
}

function whitelistMint(uint256 arg1, bytes32[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not whitelistMintEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x735468652077686974656c6973742073616c65206973206e6f7420656e61626c6564,
                    mem[198 len 30]
    if not stor22:
        if msg.value:
            revert with 0, 'Not enough Klay'
    else:
        if arg1 * stor22 / stor22 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 * stor22 != msg.value:
            revert with 0, 'Not enough Klay'
    if stor27[msg.sender]:
        revert with 0, 'Address already claimed!'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73546f6f206d616e79207265717565737473206f72207a65726f20726571756573,
                    mem[197 len 31]
    if arg1 > stor17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73546f6f206d616e79207265717565737473206f72207a65726f20726571756573,
                    mem[197 len 31]
    mem[180 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 180] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        if s + sha3(Mask(160, 96, msg.sender) >> 96) > mem[(32 * idx) + 180]:
            mem[0] = mem[(32 * idx) + 180]
            mem[32] = s + sha3(Mask(160, 96, msg.sender) >> 96)
            idx = idx + 1
            s = sha3(mem[(32 * idx) + 180], s)
            continue 
        mem[0] = s + sha3(Mask(160, 96, msg.sender) >> 96)
        mem[32] = mem[(32 * idx) + 180]
        idx = idx + 1
        s = sha3(s, mem[(32 * idx) + 180])
        continue 
    if s != merkleRoot:
        revert with 0, 'Invalid proof!'
    idx = 0
    while idx < arg1:
        if not msg.sender:
            revert with 0, 'KIP17: mint to the zero address'
        if ownerOf[stor16]:
            revert with 0, 'KIP17: token already minted'
        ownerOf[stor16] = msg.sender
        balanceOf[address(msg.sender)]++
        emit Transfer(0, msg.sender, stor16);
        stor6[stor16] = tokenOfOwnerByIndex[address(msg.sender)]
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = stor16
        mem[32] = 8
        stor8[stor16] = tokenByIndex.length
        tokenByIndex.length++
        mem[0] = 7
        tokenByIndex[tokenByIndex.length] = stor16
        if stor16 + 1 < stor16:
            revert with 0, 'SafeMath: addition overflow'
        stor16++
        idx = idx + 1
        continue 
    stor27[msg.sender] = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6c4b495031373a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[207 len 21]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x6e4b495031373a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[207 len 21]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x774b495031373a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[212 len 16]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x734b495031373a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[204 len 24]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x744b495031373a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if approved[arg3]:
        approved[arg3] = 0
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6c4b495031373a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[207 len 21]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x6e4b495031373a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[207 len 21]
        if approved[arg1] != msg.sender:
            if not stor4[stor1[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            47,
                            0x724b495031374275726e61626c653a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[211 len 17]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[204 len 24]
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x214b495031373a206275726e206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[200 len 28]
    if approved[arg1]:
        approved[arg1] = 0
    if 1 > balanceOf[stor1[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[stor1[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if 1 > tokenOfOwnerByIndex[stor1[arg1]]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[stor1[arg1]] - 1 != stor6[arg1]:
        require tokenOfOwnerByIndex[stor1[arg1]] - 1 < tokenOfOwnerByIndex[stor1[arg1]]
        require stor6[arg1] < tokenOfOwnerByIndex[stor1[arg1]]
        tokenOfOwnerByIndex[stor1[arg1]][stor6[arg1]] = tokenOfOwnerByIndex[stor1[arg1]][tokenOfOwnerByIndex[stor1[arg1]]]
        stor6[stor5[stor1[arg1]][stor5[stor1[arg1]]]] = stor6[arg1]
    tokenOfOwnerByIndex[stor1[arg1]]--
    if tokenOfOwnerByIndex[stor1[arg1]] > tokenOfOwnerByIndex[stor1[arg1]] - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1]] - 1
        while tokenOfOwnerByIndex[stor1[arg1]] > idx:
            tokenOfOwnerByIndex[stor1[arg1]][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg1] = 0
    if 1 > tokenByIndex.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require tokenByIndex.length - 1 < tokenByIndex.length
    require stor8[arg1] < tokenByIndex.length
    tokenByIndex[stor8[arg1]] = tokenByIndex[tokenByIndex.length]
    stor8[stor7[stor7.length]] = stor8[arg1]
    tokenByIndex.length--
    if tokenByIndex.length > tokenByIndex.length - 1:
        idx = tokenByIndex.length - 1
        while tokenByIndex.length > idx:
            tokenByIndex[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    if Mask(255, 1, uint256(stor11[arg1]) and (256 * not bool(stor11[arg1])) - 1):
        uint256(stor11[arg1]) = 0
        if 31 < stor11[arg1].length:
            idx = 0
            while stor11[arg1].length + 31 / 32 > idx:
                uint256(stor11[arg1][idx]) = 0
                idx = idx + 1
                continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe4b495031374d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[210 len 18]
    if revealed:
        mem[128] = uint256(stor23.field_0)
        idx = 128
        s = 0
        while stor23.length + 96 > idx:
            mem[idx + 32] = stor23[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor23.length <= 0:
            var23001 = 0
            return ''
        if not arg1:
            mem[ceil32(stor23.length) + 128] = 1
            mem[ceil32(stor23.length) + 224 len floor32(stor23.length)] = mem[128 len floor32(stor23.length)]
            mem[ceil32(stor23.length) + floor32(stor23.length) + 224] = 256^(-stor23.length % 32 + 32) - 1 and mem[ceil32(stor23.length) + floor32(stor23.length) + 224] or mem[floor32(stor23.length) + 128] and !(256^(-stor23.length % 32 + 32) - 1)
            mem[ceil32(stor23.length) + stor23.length + 224 len 0] = None
            var28001 = ceil32(stor23.length) + 160
            mem[ceil32(stor23.length) + stor23.length + 224 len 0] = 0
            mem[ceil32(stor23.length) + stor23.length + 225] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor23.length) + stor23.length + 230] = 32
            mem[ceil32(stor23.length) + stor23.length + 262] = mem[ceil32(stor23.length) + 192]
            mem[ceil32(stor23.length) + stor23.length + 294 len ceil32(mem[ceil32(stor23.length) + 192])] = mem[ceil32(stor23.length) + 224 len ceil32(mem[ceil32(stor23.length) + 192])]
            if not mem[ceil32(stor23.length) + 192] % 32:
                return 32, mem[ceil32(stor23.length) + stor23.length + 262 len mem[ceil32(stor23.length) + 192] + 32]
            mem[floor32(mem[ceil32(stor23.length) + 192]) + ceil32(stor23.length) + stor23.length + 294] = mem[floor32(mem[ceil32(stor23.length) + 192]) + ceil32(stor23.length) + stor23.length + -(mem[ceil32(stor23.length) + 192] % 32) + 326 len mem[ceil32(stor23.length) + 192] % 32]
            return Array(len=mem[ceil32(stor23.length) + 192], data=mem[ceil32(stor23.length) + stor23.length + 294 len floor32(mem[ceil32(stor23.length) + 192]) + 32]), 
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[ceil32(stor23.length) + 128] = s
        if s:
            mem[ceil32(stor23.length) + 160 len s] = code.data[15662 len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor23.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor23.length) + ceil32(s) + 192 len floor32(stor23.length)] = mem[128 len floor32(stor23.length)]
        mem[ceil32(stor23.length) + ceil32(s) + floor32(stor23.length) + 192] = 256^(-stor23.length % 32 + 32) - 1 and mem[ceil32(stor23.length) + ceil32(s) + floor32(stor23.length) + 192] or mem[floor32(stor23.length) + 128] and !(256^(-stor23.length % 32 + 32) - 1)
        mem[ceil32(stor23.length) + ceil32(s) + stor23.length + 192 len floor32(s)] = mem[ceil32(stor23.length) + 160 len floor32(s)]
        mem[ceil32(stor23.length) + ceil32(s) + stor23.length + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(stor23.length) + floor32(s) + -(s % 32) + 192 len s % 32]
        mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 197] = 32
        mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 229] = mem[ceil32(stor23.length) + ceil32(s) + 160]
        mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 261 len ceil32(mem[ceil32(stor23.length) + ceil32(s) + 160])] = mem[ceil32(stor23.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor23.length) + ceil32(s) + 160])]
        if not mem[ceil32(stor23.length) + ceil32(s) + 160] % 32:
            return 32, mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 229 len mem[ceil32(stor23.length) + ceil32(s) + 160] + 32], 
        mem[floor32(mem[ceil32(stor23.length) + ceil32(s) + 160]) + s + ceil32(stor23.length) + ceil32(s) + stor23.length + 261] = mem[floor32(mem[ceil32(stor23.length) + ceil32(s) + 160]) + s + ceil32(stor23.length) + ceil32(s) + stor23.length + -(mem[ceil32(stor23.length) + ceil32(s) + 160] % 32) + 293 len mem[ceil32(stor23.length) + ceil32(s) + 160] % 32]
        return Array(len=mem[ceil32(stor23.length) + ceil32(s) + 160], data=mem[s + ceil32(stor23.length) + ceil32(s) + stor23.length + 261 len floor32(mem[ceil32(stor23.length) + ceil32(s) + 160]) + 32]), 
    mem[96] = stor24.length
    mem[0] = 24
    mem[128] = uint256(stor24.field_0)
    idx = 128
    s = 0
    while stor24.length + 96 > idx:
        mem[idx + 32] = stor24[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor24.length <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor24.length) + 128] = 1
        mem[ceil32(stor24.length) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor24.length) + 224 len floor32(stor24.length)] = mem[128 len floor32(stor24.length)]
        mem[ceil32(stor24.length) + floor32(stor24.length) + 224] = 256^(-stor24.length % 32 + 32) - 1 and mem[ceil32(stor24.length) + floor32(stor24.length) + 224] or mem[floor32(stor24.length) + 128] and !(256^(-stor24.length % 32 + 32) - 1)
        mem[ceil32(stor24.length) + stor24.length + 224 len 0] = None
        var28001 = ceil32(stor24.length) + 160
        mem[ceil32(stor24.length) + stor24.length + 224 len 0] = 0
        mem[ceil32(stor24.length) + stor24.length + 225] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor24.length) + stor24.length + 230
        mem[ceil32(stor24.length) + stor24.length + 230] = 32
        mem[ceil32(stor24.length) + stor24.length + 262] = mem[ceil32(stor24.length) + 192]
        mem[ceil32(stor24.length) + stor24.length + 294 len ceil32(mem[ceil32(stor24.length) + 192])] = mem[ceil32(stor24.length) + 224 len ceil32(mem[ceil32(stor24.length) + 192])]
        if not mem[ceil32(stor24.length) + 192] % 32:
            return 32, mem[ceil32(stor24.length) + stor24.length + 262 len mem[ceil32(stor24.length) + 192] + 32]
        mem[floor32(mem[ceil32(stor24.length) + 192]) + ceil32(stor24.length) + stor24.length + 294] = mem[floor32(mem[ceil32(stor24.length) + 192]) + ceil32(stor24.length) + stor24.length + -(mem[ceil32(stor24.length) + 192] % 32) + 326 len mem[ceil32(stor24.length) + 192] % 32]
        return 32, mem[ceil32(stor24.length) + stor24.length + 262 len floor32(mem[ceil32(stor24.length) + 192]) + 64]
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(stor24.length) + 128] = s
    if s:
        mem[ceil32(stor24.length) + 160 len s] = code.data[15662 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor24.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor24.length) + ceil32(s) + 192 len floor32(stor24.length)] = mem[128 len floor32(stor24.length)]
    mem[ceil32(stor24.length) + ceil32(s) + floor32(stor24.length) + 192] = 256^(-stor24.length % 32 + 32) - 1 and mem[ceil32(stor24.length) + ceil32(s) + floor32(stor24.length) + 192] or mem[floor32(stor24.length) + 128] and !(256^(-stor24.length % 32 + 32) - 1)
    mem[ceil32(stor24.length) + ceil32(s) + stor24.length + 192 len floor32(s)] = mem[ceil32(stor24.length) + 160 len floor32(s)]
    mem[ceil32(stor24.length) + ceil32(s) + stor24.length + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(stor24.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 192] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    mem[64] = s + ceil32(stor24.length) + ceil32(s) + stor24.length + 197
    mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 197] = 32
    mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 229] = mem[ceil32(stor24.length) + ceil32(s) + 160]
    mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 261 len ceil32(mem[ceil32(stor24.length) + ceil32(s) + 160])] = mem[ceil32(stor24.length) + ceil32(s) + 192 len ceil32(mem[ceil32(stor24.length) + ceil32(s) + 160])]
    if not mem[ceil32(stor24.length) + ceil32(s) + 160] % 32:
        return 32, mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 229 len mem[ceil32(stor24.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(stor24.length) + ceil32(s) + 160]) + s + ceil32(stor24.length) + ceil32(s) + stor24.length + 261] = mem[floor32(mem[ceil32(stor24.length) + ceil32(s) + 160]) + s + ceil32(stor24.length) + ceil32(s) + stor24.length + -(mem[ceil32(stor24.length) + ceil32(s) + 160] % 32) + 293 len mem[ceil32(stor24.length) + ceil32(s) + 160] % 32]
    return 32, mem[s + ceil32(stor24.length) + ceil32(s) + stor24.length + 229 len floor32(mem[ceil32(stor24.length) + ceil32(s) + 160]) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    43,
                    0x6c4b495031373a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 239 len 21]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 236 len 24]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        43,
                        0x6e4b495031373a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 239 len 21]
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            48,
                            0x774b495031373a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 244 len 16]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    40,
                    0x654b495031373a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 236 len 24]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    40,
                    0x734b495031373a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 236 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    35,
                    0x744b495031373a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 231 len 29]
    if approved[arg3]:
        approved[arg3] = 0
    mem[ceil32(arg4.length) + 128] = 30
    if 1 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if 1 > tokenOfOwnerByIndex[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor6[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor6[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor6[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor6[stor5[address(arg1)][stor5[address(arg1)]]] = stor6[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor6[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if not ext_code.size(arg2):
    mem[ceil32(arg4.length) + 388] = 128
    mem[ceil32(arg4.length) + 420] = arg4.length
    mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg4.length) + 452 len floor32(arg4.length + 164)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]
        mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 484 len arg4.length + 164 % 32] = mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + -floor32(arg4.length + 164) + 164]
        call arg2.mem[ceil32(arg4.length) + floor32(arg4.length + 164) + 256 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[ceil32(arg4.length) + 420 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len arg4.length + -floor32(arg4.length + 164) + 164]
        if not return_data.size:
            if arg4.length:
                require arg4.length >= 32
                if Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            mem[arg4.length + ceil32(arg4.length) + 584] = 128
            mem[arg4.length + ceil32(arg4.length) + 616] = arg4.length
            mem[arg4.length + ceil32(arg4.length) + 648 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if arg4.length % 32:
                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 648] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 680 len arg4.length % 32]
                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 680 len floor32(floor32(arg4.length) + 196)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[arg4.length + ceil32(arg4.length) + 616 len floor32(arg4.length + 164) + -(arg4.length + 164 % 32) - 132], mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + 164 % 32], mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 484 len floor32(floor32(arg4.length) + 196) - floor32(arg4.length + 164)]
                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 712 len floor32(arg4.length) + 196 % 32] = mem[arg4.length + ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) + 92 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                call arg2.mem[arg4.length + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 452 len 4] with:
                     gas gas_remaining wei
                    args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[arg4.length + ceil32(arg4.length) + 616 len floor32(arg4.length + 164) + -(arg4.length + 164 % 32) - 132], mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + 164 % 32], mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 484 len floor32(floor32(arg4.length) + 196) - floor32(arg4.length + 164)]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 680 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    Mask(128, (8 * floor32(floor32(arg4.length) + 196) - 116) + -(8 * floor32(floor32(arg4.length) + 196)) + 128, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 484 len floor32(floor32(arg4.length) + 196) - floor32(arg4.length + 164)]) << -(8 * floor32(floor32(arg4.length) + 196) - 116) + (8 * floor32(floor32(arg4.length) + 196)) - 128
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    Mask(128, (8 * floor32(floor32(arg4.length) + 196) - 116) + -(8 * floor32(floor32(arg4.length) + 196)) + 128, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 484 len floor32(floor32(arg4.length) + 196) - floor32(arg4.length + 164)]) << -(8 * floor32(floor32(arg4.length) + 196) - 116) + (8 * floor32(floor32(arg4.length) + 196)) - 128
                else:
                    mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 797 len 16]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + 712]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 797 len 16]
            mem[(2 * arg4.length) + ceil32(arg4.length) + 648 len floor32(arg4.length + 164)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[arg4.length + ceil32(arg4.length) + 616 len floor32(arg4.length + 164) + -(arg4.length + 164 % 32) - 132], mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + 164 % 32]
            mem[(2 * arg4.length) + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 680 len arg4.length + 164 % 32] = mem[arg4.length + ceil32(arg4.length) + -(arg4.length + 164 % 32) + floor32(arg4.length + 164) + 516 len arg4.length + 164 % 32]
            call arg2.mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 164) + 452 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * arg4.length) + ceil32(arg4.length) + 652 len arg4.length + 160]
            if return_data.size:
                mem[(2 * arg4.length) + ceil32(arg4.length) + 680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 765 len 16]
                require return_data.size >= 32
                if Mask(32, 224, mem[(2 * arg4.length) + ceil32(arg4.length) + 680]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 765 len 16]
            if arg4.length:
                require arg4.length >= 32
                if Mask(32, 224, mem[128]) == 0x6745782b00000000000000000000000000000000000000000000000000000000:
            mem[(2 * arg4.length) + ceil32(arg4.length) + 648] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * arg4.length) + ceil32(arg4.length) + 652] = 32
            mem[(2 * arg4.length) + ceil32(arg4.length) + 684] = 48
            mem[(2 * arg4.length) + ceil32(arg4.length) + 716 len 48] = 0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465
            revert with 0, 
                        32,
                        48,
                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                        Mask(128, (8 * floor32(arg4.length + 164) - 116) + -(8 * floor32(arg4.length + 164)) + 128, mem[ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) - 40 len arg4.length + 164 % 32]) << -(8 * floor32(arg4.length + 164) - 116) + (8 * floor32(arg4.length + 164)) - 128
        mem[arg4.length + ceil32(arg4.length) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size >= 32
            if Mask(32, 224, mem[arg4.length + ceil32(arg4.length) + 484]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000:
        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 585] = 128
        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 617] = arg4.length
        mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if arg4.length % 32:
            mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len arg4.length % 32]
            mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(floor32(arg4.length) + 196)] = 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(floor32(arg4.length) + 196) - 164]
            mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 713 len floor32(arg4.length) + 196 % 32] = mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) + 93 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
            call arg2.mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 453 len 4] with:
                 gas gas_remaining wei
                args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 681 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                Mask(128, (8 * floor32(floor32(arg4.length) + 196) - 116) + -(8 * floor32(floor32(arg4.length) + 196)) + 128, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 116) + (8 * floor32(floor32(arg4.length) + 196)) - 128
                require arg4.length >= 32
                if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                Mask(128, (8 * floor32(floor32(arg4.length) + 196) - 116) + -(8 * floor32(floor32(arg4.length) + 196)) + 128, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(floor32(arg4.length) + 196) - 164]) << -(8 * floor32(floor32(arg4.length) + 196) - 116) + (8 * floor32(floor32(arg4.length) + 196)) - 128
            else:
                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not return_data.size:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                require return_data.size >= 32
                if Mask(32, 224, mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 713]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                48,
                                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                mem[floor32(arg4.length) + arg4.length + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 617 len floor32(arg4.length + 164) - 132]
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 681 len arg4.length + 164 % 32] = mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + -(arg4.length + 164 % 32) + floor32(arg4.length + 164) + 517 len arg4.length + 164 % 32]
        call arg2.mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + 453 len 4] with:
             gas gas_remaining wei
            args mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 653 len arg4.length + 160]
        if return_data.size:
            mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not return_data.size:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            mem[(2 * arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 766 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
            require return_data.size >= 32
            if Mask(32, 224, mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            mem[(2 * arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 766 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
        if arg4.length:
            require arg4.length >= 32
            if Mask(32, 224, mem[128]) == 0x6745782b00000000000000000000000000000000000000000000000000000000:
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 653] = 32
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 685] = 48
        mem[(2 * arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 717 len 48] = 0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465
        revert with 0, 
                    32,
                    48,
                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                    Mask(128, (8 * floor32(arg4.length + 164) - 116) + -(8 * floor32(arg4.length + 164)) + 128, mem[arg4.length + ceil32(arg4.length) + ceil32(return_data.size) + 617 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 116) + (8 * floor32(arg4.length + 164)) - 128
    mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
    mem[floor32(arg4.length) + ceil32(arg4.length) + 484 len floor32(floor32(arg4.length) + 196)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]
    mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 516 len floor32(arg4.length) + 196 % 32] = mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
    call arg2.mem[ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 256 len 4] with:
         gas gas_remaining wei
        args Mask(8 * floor32(floor32(arg4.length) + 196) - 4, -(8 * floor32(floor32(arg4.length) + 196)) + 256, mem[ceil32(arg4.length) + 452 len floor32(floor32(arg4.length) + 196) - 164]) << (8 * floor32(floor32(arg4.length) + 196)) - 256, mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len floor32(arg4.length) + -floor32(floor32(arg4.length) + 196) + 196]
    if return_data.size:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not return_data.size:
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649] = arg4.length
            mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if not arg4.length % 32:
                mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(arg4.length + 164)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]
                mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 713 len arg4.length + 164 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) + 189 len arg4.length + -floor32(arg4.length + 164) + 164]
                call arg2 with:
                   funct Mask(32, 224, 1732605995, msg.sender, address(arg1), arg3, 128, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]) >> 224
                     gas gas_remaining wei
                    args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + 681 len arg4.length + -floor32(arg4.length + 164) + 164]
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[-(arg4.length % 32) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * floor32(arg4.length + 164)) + 405 len 16]
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[-(arg4.length % 32) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * floor32(arg4.length + 164)) + 405 len 16]
                else:
                    mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 713]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
            else:
                mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg4.length % 32) + 713 len arg4.length % 32]
                mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 713 len floor32(floor32(arg4.length) + 196)] = 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(floor32(arg4.length) + 196) - 164]
                mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 745 len floor32(arg4.length) + 196 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(floor32(arg4.length) + 196 % 32) + floor32(floor32(arg4.length) + 196) + 549 len floor32(arg4.length) + 196 % 32]
                call arg2 with:
                   funct Mask(32, 224, 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(floor32(arg4.length) + 196) - 164]) >> 224
                     gas gas_remaining wei
                    args mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 717 len floor32(arg4.length) + 192]
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 601 len 16]
                    require arg4.length >= 32
                    if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 601 len 16]
                else:
                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not return_data.size:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 830 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                    require return_data.size >= 32
                    if Mask(32, 224, mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 745]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    48,
                                    0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 830 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
        else:
            require return_data.size >= 32
            if Mask(32, 224, mem[floor32(arg4.length) + ceil32(arg4.length) + 516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649] = arg4.length
                mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                if not arg4.length % 32:
                    mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(arg4.length + 164)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]
                    mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 713 len arg4.length + 164 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) + 189 len arg4.length + -floor32(arg4.length + 164) + 164]
                    call arg2 with:
                       funct Mask(32, 224, 1732605995, msg.sender, address(arg1), arg3, 128, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]) >> 224
                         gas gas_remaining wei
                        args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 649 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(arg4.length + 164) + 681 len arg4.length + -floor32(arg4.length + 164) + 164]
                    if not return_data.size:
                        if not arg4.length:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[-(arg4.length % 32) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * floor32(arg4.length + 164)) + 405 len 16]
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[-(arg4.length % 32) + ceil32(arg4.length) + ceil32(return_data.size) + (2 * floor32(arg4.length + 164)) + 405 len 16]
                    else:
                        mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not return_data.size:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 713]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 798 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                else:
                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 681] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg4.length % 32) + 713 len arg4.length % 32]
                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 713 len floor32(floor32(arg4.length) + 196)] = 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(floor32(arg4.length) + 196) - 164]
                    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 745 len floor32(arg4.length) + 196 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(floor32(arg4.length) + 196 % 32) + floor32(floor32(arg4.length) + 196) + 549 len floor32(arg4.length) + 196 % 32]
                    call arg2 with:
                       funct Mask(32, 224, 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 681 len floor32(floor32(arg4.length) + 196) - 164]) >> 224
                         gas gas_remaining wei
                        args mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 717 len floor32(arg4.length) + 192]
                    if not return_data.size:
                        if not arg4.length:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 601 len 16]
                        require arg4.length >= 32
                        if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + floor32(floor32(arg4.length) + 196) + 601 len 16]
                    else:
                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not return_data.size:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 830 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
                        require return_data.size >= 32
                        if Mask(32, 224, mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 745]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        48,
                                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + (2 * ceil32(return_data.size)) + 830 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 16]
    if arg4.length:
        require arg4.length >= 32
        if Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000:
    mem[floor32(arg4.length) + ceil32(arg4.length) + 616] = 128
    mem[floor32(arg4.length) + ceil32(arg4.length) + 648] = arg4.length
    mem[floor32(arg4.length) + ceil32(arg4.length) + 680 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + 680 len floor32(arg4.length + 164)] = 1732605995, msg.sender, address(arg1), arg3, 128, mem[floor32(arg4.length) + ceil32(arg4.length) + 648 len floor32(arg4.length + 164) - 132]
        mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + floor32(arg4.length + 164) + -(arg4.length + 164 % 32) + 712 len arg4.length + 164 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + (3 * floor32(arg4.length + 164)) + (-2 * arg4.length) + 188 len arg4.length + -floor32(arg4.length + 164) + 164]
        call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(arg4.length + 164) + 484 len 4] with:
             gas gas_remaining wei
            args Mask(8 * floor32(arg4.length + 164) - 4, -(8 * floor32(arg4.length + 164)) + 256, mem[floor32(arg4.length) + ceil32(arg4.length) + 648 len floor32(arg4.length + 164) - 132]) << (8 * floor32(arg4.length + 164)) - 256, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + floor32(arg4.length + 164) + 680 len arg4.length + -floor32(arg4.length + 164) + 164]
        if not return_data.size:
            if not arg4.length:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            Mask(128, (8 * floor32(arg4.length + 164) - 116) + -(8 * floor32(arg4.length + 164)) + 128, mem[floor32(arg4.length) + ceil32(arg4.length) + 648 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 116) + (8 * floor32(arg4.length + 164)) - 128
            require arg4.length >= 32
            if Mask(32, 224, mem[128]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            Mask(128, (8 * floor32(arg4.length + 164) - 116) + -(8 * floor32(arg4.length + 164)) + 128, mem[floor32(arg4.length) + ceil32(arg4.length) + 648 len floor32(arg4.length + 164) - 132]) << -(8 * floor32(arg4.length + 164) - 116) + (8 * floor32(arg4.length + 164)) - 128
        else:
            mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + 712 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not return_data.size:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 797 len 16]
            require return_data.size >= 32
            if Mask(32, 224, mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + 712]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            48,
                            0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                            mem[arg4.length + floor32(arg4.length) + ceil32(arg4.length) + ceil32(return_data.size) + 797 len 16]
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 680] = mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + -(arg4.length % 32) + 712 len arg4.length % 32]
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 712 len floor32(floor32(arg4.length) + 196)] = 1732605995, msg.sender, address(arg1), arg3, 128, arg4.length, mem[floor32(arg4.length) + ceil32(arg4.length) + 680 len floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) - 164], mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + 196 % 32]
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + -(floor32(arg4.length) + 196 % 32) + 744 len floor32(arg4.length) + 196 % 32] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 196 % 32) + floor32(floor32(arg4.length) + 196) + 548 len floor32(arg4.length) + 196 % 32]
    call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + floor32(floor32(arg4.length) + 196) + 484 len 4] with:
         gas gas_remaining wei
        args mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 716 len floor32(arg4.length) + 192]
    if return_data.size:
        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 744 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not return_data.size:
            revert with 0, 
                        32,
                        48,
                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 829 len 16]
        require return_data.size >= 32
        if Mask(32, 224, mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 744]) != 0x6745782b00000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        48,
                        0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                        mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + ceil32(return_data.size) + 829 len 16]
    if arg4.length:
        require arg4.length >= 32
        if Mask(32, 224, mem[128]) == 0x6745782b00000000000000000000000000000000000000000000000000000000:
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 712] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 716] = 32
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 748] = 48
    mem[(2 * floor32(arg4.length)) + ceil32(arg4.length) + 780 len 48] = 0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465
    revert with 0, 
                32,
                48,
                0x734b495031373a207472616e7366657220746f206e6f6e204b49503137526563656976657220696d706c656d656e7465,
                Mask(128, (8 * floor32(floor32(arg4.length) + 196) - 116) + -(8 * floor32(floor32(arg4.length) + 196)) + 128, mem[ceil32(arg4.length) + (3 * floor32(floor32(arg4.length) + 196)) + (-2 * floor32(arg4.length)) - 104 len floor32(arg4.length) + 196 % 32]) << -(8 * floor32(floor32(arg4.length) + 196) - 116) + (8 * floor32(floor32(arg4.length) + 196)) - 128
}



}
