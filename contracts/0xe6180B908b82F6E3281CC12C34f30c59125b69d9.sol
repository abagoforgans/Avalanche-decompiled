contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#
const bananaPrice = 25 * 10^15

const maxBananaPurchase = 20

const MAX_BANANAS = 9001


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
address owner;
array of uint256 BANANA_PROVENANCE;
array of uint256 tokenLicense;
uint8 stor13;
uint8 saleIsActive; offset 8
uint256 stor13; offset 8
mapping of struct bananaNames;
uint256 bananaReserve;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function BANANA_PROVENANCE() {
    return BANANA_PROVENANCE[0 len BANANA_PROVENANCE.length]
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenByIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function viewBananaName(uint256 arg1) {
    return bananaNames[arg1][0 len bananaNames[arg1].length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function bananaReserve() {
    return bananaReserve
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function LICENSE_TEXT() {
    return tokenLicense[0 len tokenLicense.length].field_0
}

function bananaNames(uint256 arg1) {
    return bananaNames[arg1][0 len bananaNames[arg1].length].field_0
}

function tokenLicense(uint256 arg1) {
    return tokenLicense[0 len tokenLicense.length].field_0
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function saleIsActive() {
    return bool(saleIsActive)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function flipSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor13.field_8) = Mask(248, 0, not bool(saleIsActive))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
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

function setProvenanceHash(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length:
        BANANA_PROVENANCE[] = Array(len=arg1.length, data=arg1[all])
    else:
        BANANA_PROVENANCE.length = 0
        idx = 0
        while BANANA_PROVENANCE.length + 31 / 32 > idx:
            BANANA_PROVENANCE[idx] = 0
            idx = idx + 1
            continue 
}

function lockLicense() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = 1
    if not bool(tokenLicense.length):
        emit licenseisLocked(Array(len=tokenLicense.length % 128, data=Mask(248, 8, tokenLicense.length)));
    else:
        if bool(tokenLicense.length) != 1:
            emit licenseisLocked(mem[96 len -96]);
        else:
            idx = 0
            s = 0
            while idx < tokenLicense.length.field_1:
                mem[idx + 160] = tokenLicense[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            emit licenseisLocked(Array(len=2 * Mask(256, -1, tokenLicense.length.field_1), data=mem[160 len ceil32(tokenLicense.length.field_1)]));
}

function changeLicense(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor13.field_0):
        revert with 0, 'License already locked'
    if arg1.length:
        tokenLicense[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        tokenLicense.length = 0
        idx = 0
        while tokenLicense.length + 31 / 32 > idx:
            tokenLicense[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not tokenOfOwnerByIndex[address(arg1)]:
        return ''
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if tokenOfOwnerByIndex[address(arg1)]:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
    idx = 0
    while idx < tokenOfOwnerByIndex[address(arg1)]:
        mem[32] = 1
        if tokenOfOwnerByIndex[address(arg1)] <= idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[0] = sha3(address(arg1), 1)
        require idx < tokenOfOwnerByIndex[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    return Array(len=tokenOfOwnerByIndex[address(arg1)], data=mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == tokenByIndex[stor3[arg2] - 1].field_256:
        revert with 0, 'ERC721: approval to current owner'
    if tokenByIndex[stor3[arg2] - 1].field_256 != msg.sender:
        if not stor5[stor2[stor3[arg2] - 1].field_256][address(msg.sender)]:
            revert with 0, 'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg2] - 1 < tokenByIndex.length
    emit Approval(tokenByIndex[stor3[arg2] - 1].field_256, arg1, arg2);
}

function changeBananaName(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 41
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg2.length) + 201 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg1] - 1].field_256 != msg.sender:
        revert with 0, 'Hey, your wallet doesn't own this croc!'
    if not bananaNames[arg1].field_0:
        mem[ceil32(arg2.length) + 224] = Mask(248, 8, bananaNames[arg1].field_0)
        hash = sha256hash(mem[ceil32(arg2.length) + 224 len bananaNames[arg1].field_1]) 
    else:
        if bananaNames[arg1].field_0 != 1:
            hash = sha256hash(mem[ceil32(arg2.length) + 224 len -ceil32(arg2.length) - 224]) 
        else:
            idx = 0
            s = 0
            while idx < bananaNames[arg1].field_1:
                mem[ceil32(arg2.length) + idx + 224] = bananaNames[arg1][s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            hash = sha256hash(mem[ceil32(arg2.length) + 224 len bananaNames[arg1].field_1]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    hash = sha256hash(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash == hash
    if hash == hash:
        revert with 0, 'New name is same as the current one'
    if arg2.length:
        bananaNames[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        bananaNames[arg1].field_0 = 0
        idx = 0
        while bananaNames[arg1].length + 31 / 32 > idx:
            bananaNames[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit bananaNameChange(msg.sender, arg1, Array(len=arg2.length, data=arg2[all]));
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[265 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[361 len 23] >> 72,
                    0
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

function bananaNamesOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = arg1
    mem[32] = 1
    if not tokenOfOwnerByIndex[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = (32 * mem[96]) + 192
        u = 192
        while idx < 0:
            mem[u] = t - 192
            _44 = mem[s]
            _48 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _48:
                mem[t + v + 32] = mem[_44 + v + 32]
                v = v + 32
                continue 
            if ceil32(_48) > _48:
                mem[t + _48 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_48) + 32
            u = u + 32
            continue 
    else:
        require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
        mem[96] = tokenOfOwnerByIndex[address(arg1)]
        mem[64] = (32 * tokenOfOwnerByIndex[address(arg1)]) + 128
        if not tokenOfOwnerByIndex[address(arg1)]:
            idx = 0
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                if tokenOfOwnerByIndex[address(arg1)] <= idx:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 14
                _56 = mem[64]
                mem[64] = mem[64] + ceil32(bananaNames[stor1[address(arg1)][idx]].length) + 32
                mem[_56] = bananaNames[stor1[address(arg1)][idx]].length
                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 14)
                mem[_56 + 32] = bananaNames[stor1[address(arg1)][idx]].field_0
                s = _56 + 32
                t = sha3(mem[0])
                while _56 + bananaNames[stor1[address(arg1)][s]].length > s:
                    mem[s + 32] = tokenOfOwnerByIndex[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require _56 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 32 < mem[96]
                mem[(32 * _56 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 32) + 128] = _56
                s = _56 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 33
                continue 
            _46 = mem[64]
            mem[mem[64]] = 32
            _51 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _51:
                mem[u] = t + -_46 - 64
                _80 = mem[s]
                _86 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _86:
                    mem[t + v + 32] = mem[_80 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_86) > _86:
                    mem[t + _86 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_86) + 32
                u = u + 32
                continue 
        else:
            mem[128] = 96
            s = 128
            idx = tokenOfOwnerByIndex[address(arg1)]
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < tokenOfOwnerByIndex[address(arg1)]:
                if tokenOfOwnerByIndex[address(arg1)] <= idx:
                    revert with 0, 'EnumerableSet: index out of bounds'
                require idx < tokenOfOwnerByIndex[address(arg1)]
                mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
                mem[32] = 14
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(bananaNames[stor1[address(arg1)][idx]].length) + 32
                mem[_91] = bananaNames[stor1[address(arg1)][idx]].length
                mem[0] = sha3(tokenOfOwnerByIndex[address(arg1)][idx], 14)
                mem[_91 + 32] = bananaNames[stor1[address(arg1)][idx]].field_0
                s = _91 + 32
                t = sha3(mem[0])
                while _91 + bananaNames[stor1[address(arg1)][s]].length > s:
                    mem[s + 32] = tokenOfOwnerByIndex[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require _91 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 32 < mem[96]
                mem[(32 * _91 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 32) + 128] = _91
                s = _91 + floor32(bananaNames[stor1[address(arg1)][s]].length - 1) + 33
                continue 
            _85 = mem[64]
            mem[mem[64]] = 32
            _88 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _88:
                mem[u] = t + -_85 - 64
                _103 = mem[s]
                _106 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _106:
                    mem[t + v + 32] = mem[_103 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_106) > _106:
                    mem[t + _106 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_106) + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not baseURI.length:
        var47001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length > 0:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var46001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 192] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]), 
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 256] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + stor8[arg1].length + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32], 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var50001 = ceil32(baseURI.length)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]:
            return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]), 
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + 321] = 0
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) + 32], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
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
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
    if ceil32(baseURI.length) > baseURI.length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 0
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 224] = 32
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + 288] = 0
    return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + s + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not stor3[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    mem[ceil32(arg4.length) + 128] = 41
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 201 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != msg.sender:
        if not stor3[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[stor3[arg3] - 1].field_256][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 297 len 23] >> 72,
                    0
    require stor3[arg3] - 1 < tokenByIndex.length
    if tokenByIndex[stor3[arg3] - 1].field_256 != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[ceil32(arg4.length) + 393 len 23] >> 72,
                    0
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
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 38
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 808] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 712] = 32
                mem[(2 * ceil32(arg4.length)) + 744] = 29
                mem[(2 * ceil32(arg4.length)) + 776] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 708
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 708 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 612 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 872] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 416 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 712 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 694 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 740] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 740]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        tokenByIndex[tokenByIndex.length].field_256 = arg2
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(arg4.length) + arg4.length + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 38
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: insufficient balance fo'
                mem[(2 * ceil32(arg4.length)) + 872] = 'r call'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 132
            if ext_code.size(arg2) <= 0:
                mem[(2 * ceil32(arg4.length)) + 772] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(arg4.length)) + 776] = 32
                mem[(2 * ceil32(arg4.length)) + 808] = 29
                mem[(2 * ceil32(arg4.length)) + 840] = 'Address: call to non-contract'
                revert with memory
                  from (2 * ceil32(arg4.length)) + 772
                   len ceil32(arg4.length) + 100
            mem[(2 * ceil32(arg4.length)) + 772 len floor32(ceil32(arg4.length) + 195)] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 676 len floor32(ceil32(arg4.length) + 195) + -ceil32(arg4.length) - 164]
            if floor32(ceil32(arg4.length) + 195) > ceil32(arg4.length) + 164:
                mem[(4 * ceil32(arg4.length)) + 936] = 0
            call arg2.mem[ceil32(arg4.length) + floor32(ceil32(arg4.length) + 195) + 480 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(arg4.length)) + 776 len (6 * ceil32(arg4.length)) + 160]
            if not return_data.size:
                if not ext_call.success:
                    if arg4.length > 0:
                        revert with arg4[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require arg4.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[(2 * ceil32(arg4.length)) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[(2 * ceil32(arg4.length)) + 758 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[(2 * ceil32(arg4.length)) + 804] == Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804])
                if Mask(32, 224, mem[(2 * ceil32(arg4.length)) + 804]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function reserveBananas(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Not enough reserve left for team'
    if arg2 > bananaReserve:
        revert with 0, 'Not enough reserve left for team'
    idx = 0
    while idx < arg2:
        _517 = mem[64]
        mem[64] = mem[64] + 32
        mem[_517] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length + idx]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(arg1)][1][stor2.length + idx]:
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            if stor3[stor2.length + idx]:
                require stor3[stor2.length + idx] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = arg1
                tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
                emit Transfer(0, arg1, tokenByIndex.length + idx);
                if ext_code.size(arg1) <= 0:
                    idx = idx + 1
                    continue 
                _553 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length + idx
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_517 + s + 32]
                    s = s + 32
                    continue 
                _1031 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1031 + 32] = mem[_1031 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _553 + 292
                mem[_553 + 196] = 50
                mem[_553 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(arg1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1079 = mem[_1031]
                s = 0
                while s < _1079:
                    mem[_553 + s + 292] = mem[_1031 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1079) > _1079:
                    mem[_553 + _1079 + 292] = 0
                call arg1.mem[_553 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_553 + 296 len _1079 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_553 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_553 + 296] = 32
                    idx = 0
                    while idx < 50:
                        mem[_553 + idx + 360] = mem[_553 + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 50, mem[_553 + 360 len 50], 0
                mem[64] = _553 + ceil32(return_data.size) + 293
                mem[_553 + 292] = return_data.size
                mem[_553 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_553 + 324] == Mask(32, 224, mem[_553 + 324])
                    if Mask(32, 224, mem[_553 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_553 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_553 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_553 + ceil32(return_data.size) + idx + 361] = mem[_553 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_553 + ceil32(return_data.size) + 361 len 50], 0
            _531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_531] = tokenByIndex.length + idx
            mem[_531 + 32] = arg1
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
            tokenByIndex[tokenByIndex.length].field_256 = arg1
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length + idx
            mem[32] = 3
            stor3[stor2.length + idx] = tokenByIndex.length
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) <= 0:
                idx = idx + 1
                continue 
            _551 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_517 + s + 32]
                s = s + 32
                continue 
            _1034 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_1034 + 32] = mem[_1034 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _551 + 292
            mem[_551 + 196] = 50
            mem[_551 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1081 = mem[_1034]
            s = 0
            while s < _1081:
                mem[_551 + s + 292] = mem[_1034 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1081) > _1081:
                mem[_551 + _1081 + 292] = 0
            call arg1.mem[_551 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_551 + 296 len _1081 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_551 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_551 + 296] = 32
                idx = 0
                while idx < 50:
                    mem[_551 + idx + 360] = mem[_551 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_551 + 360 len 50], 0
            mem[64] = _551 + ceil32(return_data.size) + 293
            mem[_551 + 292] = return_data.size
            mem[_551 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_551 + 324] == Mask(32, 224, mem[_551 + 324])
                if Mask(32, 224, mem[_551 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_551 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_551 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_551 + ceil32(return_data.size) + idx + 361] = mem[_551 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_551 + ceil32(return_data.size) + 361 len 50], 0
        tokenOfOwnerByIndex[address(arg1)]++
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]] = tokenByIndex.length + idx
        tokenOfOwnerByIndex[address(arg1)][1][stor2.length + idx] = tokenOfOwnerByIndex[address(arg1)]
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        if stor3[stor2.length + idx]:
            require stor3[stor2.length + idx] - 1 < tokenByIndex.length
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_256 = arg1
            tokenByIndex[stor3[tokenByIndex.length + idx] - 1].field_416 = 0
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) <= 0:
                idx = idx + 1
                continue 
            _554 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length + idx
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_517 + s + 32]
                s = s + 32
                continue 
            _1037 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_1037 + 32] = mem[_1037 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _554 + 292
            mem[_554 + 196] = 50
            mem[_554 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1083 = mem[_1037]
            s = 0
            while s < _1083:
                mem[_554 + s + 292] = mem[_1037 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1083) > _1083:
                mem[_554 + _1083 + 292] = 0
            call arg1.mem[_554 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_554 + 296 len _1083 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_554 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_554 + 296] = 32
                idx = 0
                while idx < 50:
                    mem[_554 + idx + 360] = mem[_554 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_554 + 360 len 50], 0
            mem[64] = _554 + ceil32(return_data.size) + 293
            mem[_554 + 292] = return_data.size
            mem[_554 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_554 + 324] == Mask(32, 224, mem[_554 + 324])
                if Mask(32, 224, mem[_554 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_554 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_554 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_554 + ceil32(return_data.size) + idx + 361] = mem[_554 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_554 + ceil32(return_data.size) + 361 len 50], 0
        _536 = mem[64]
        mem[64] = mem[64] + 64
        mem[_536] = tokenByIndex.length + idx
        mem[_536 + 32] = arg1
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length + idx
        tokenByIndex[tokenByIndex.length].field_256 = arg1
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length + idx
        mem[32] = 3
        stor3[stor2.length + idx] = tokenByIndex.length
        emit Transfer(0, arg1, tokenByIndex.length + idx);
        if ext_code.size(arg1) <= 0:
            idx = idx + 1
            continue 
        _552 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length + idx
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_517 + s + 32]
            s = s + 32
            continue 
        _1040 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_1040 + 32] = mem[_1040 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _552 + 292
        mem[_552 + 196] = 50
        mem[_552 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1085 = mem[_1040]
        s = 0
        while s < _1085:
            mem[_552 + s + 292] = mem[_1040 + s + 32]
            s = s + 32
            continue 
        if ceil32(_1085) > _1085:
            mem[_552 + _1085 + 292] = 0
        call arg1.mem[_552 + 292 len 4] with:
             gas gas_remaining wei
            args mem[_552 + 296 len _1085 - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_552 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_552 + 296] = 32
            idx = 0
            while idx < 50:
                mem[_552 + idx + 360] = mem[_552 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_552 + 360 len 50], 0
        mem[64] = _552 + ceil32(return_data.size) + 293
        mem[_552 + 292] = return_data.size
        mem[_552 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            require mem[_552 + 324] == Mask(32, 224, mem[_552 + 324])
            if Mask(32, 224, mem[_552 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_552 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_552 + ceil32(return_data.size) + 297] = 32
        idx = 0
        while idx < 50:
            mem[_552 + ceil32(return_data.size) + idx + 361] = mem[_552 + idx + 228]
            idx = idx + 32
            continue 
        revert with 0, 32, 50, mem[_552 + ceil32(return_data.size) + 361 len 50], 0
    if arg2 > bananaReserve:
        revert with 0, 'SafeMath: subtraction overflow'
    bananaReserve -= arg2
}

function mintBoringBanana(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not saleIsActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale must be active to mint crocodile'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 20 tokens at a time'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only mint 20 tokens at a time'
    if tokenByIndex.length + arg1 < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + arg1 > 9001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase would exceed max supply of Crocodiles'
    if 25 * 10^15 * arg1 / 25 * 10^15 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if msg.value < 25 * 10^15 * arg1:
        revert with 0, 'Ether value sent is not correct'
    idx = 0
    while idx < arg1:
        if tokenByIndex.length >= 9001:
            idx = idx + 1
            continue 
        _523 = mem[64]
        mem[64] = mem[64] + 32
        mem[_523] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if stor3[stor2.length]:
            revert with 0, 'ERC721: token already minted'
        if tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
            mem[0] = tokenByIndex.length
            mem[32] = 3
            if stor3[stor2.length]:
                require stor3[stor2.length] - 1 < tokenByIndex.length
                mem[0] = 2
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
                tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
                emit Transfer(0, msg.sender, tokenByIndex.length);
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _557 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = tokenByIndex.length
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_523 + s + 32]
                    s = s + 32
                    continue 
                _1035 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_1035 + 32] = mem[_1035 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _557 + 292
                mem[_557 + 196] = 50
                mem[_557 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1083 = mem[_1035]
                s = 0
                while s < _1083:
                    mem[_557 + s + 292] = mem[_1035 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1083) > _1083:
                    mem[_557 + _1083 + 292] = 0
                call msg.sender.mem[_557 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_557 + 296 len _1083 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        require mem[128] == Mask(32, 224, mem[128])
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_557 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_557 + 296] = 32
                    idx = 0
                    while idx < 50:
                        mem[_557 + idx + 360] = mem[_557 + idx + 228]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 50, mem[_557 + 360 len 50], 0
                mem[64] = _557 + ceil32(return_data.size) + 293
                mem[_557 + 292] = return_data.size
                mem[_557 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[_557 + 324] == Mask(32, 224, mem[_557 + 324])
                    if Mask(32, 224, mem[_557 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_557 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_557 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_557 + ceil32(return_data.size) + idx + 361] = mem[_557 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_557 + ceil32(return_data.size) + 361 len 50], 0
            _535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_535] = tokenByIndex.length
            mem[_535 + 32] = msg.sender
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
            tokenByIndex[tokenByIndex.length].field_256 = msg.sender
            tokenByIndex[tokenByIndex.length].field_416 = 0
            mem[0] = tokenByIndex.length
            mem[32] = 3
            stor3[stor2.length] = tokenByIndex.length
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _555 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_523 + s + 32]
                s = s + 32
                continue 
            _1038 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_1038 + 32] = mem[_1038 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _555 + 292
            mem[_555 + 196] = 50
            mem[_555 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1085 = mem[_1038]
            s = 0
            while s < _1085:
                mem[_555 + s + 292] = mem[_1038 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1085) > _1085:
                mem[_555 + _1085 + 292] = 0
            call msg.sender.mem[_555 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_555 + 296 len _1085 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_555 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_555 + 296] = 32
                idx = 0
                while idx < 50:
                    mem[_555 + idx + 360] = mem[_555 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_555 + 360 len 50], 0
            mem[64] = _555 + ceil32(return_data.size) + 293
            mem[_555 + 292] = return_data.size
            mem[_555 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_555 + 324] == Mask(32, 224, mem[_555 + 324])
                if Mask(32, 224, mem[_555 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_555 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_555 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_555 + ceil32(return_data.size) + idx + 361] = mem[_555 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_555 + ceil32(return_data.size) + 361 len 50], 0
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
        mem[0] = tokenByIndex.length
        mem[32] = 3
        if stor3[stor2.length]:
            require stor3[stor2.length] - 1 < tokenByIndex.length
            mem[0] = 2
            tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
            tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
            emit Transfer(0, msg.sender, tokenByIndex.length);
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _558 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = tokenByIndex.length
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_523 + s + 32]
                s = s + 32
                continue 
            _1041 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_1041 + 32] = mem[_1041 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _558 + 292
            mem[_558 + 196] = 50
            mem[_558 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _1087 = mem[_1041]
            s = 0
            while s < _1087:
                mem[_558 + s + 292] = mem[_1041 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1087) > _1087:
                mem[_558 + _1087 + 292] = 0
            call msg.sender.mem[_558 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_558 + 296 len _1087 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    require mem[128] == Mask(32, 224, mem[128])
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    idx = idx + 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_558 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_558 + 296] = 32
                idx = 0
                while idx < 50:
                    mem[_558 + idx + 360] = mem[_558 + idx + 228]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 50, mem[_558 + 360 len 50], 0
            mem[64] = _558 + ceil32(return_data.size) + 293
            mem[_558 + 292] = return_data.size
            mem[_558 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                require mem[_558 + 324] == Mask(32, 224, mem[_558 + 324])
                if Mask(32, 224, mem[_558 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_558 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_558 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_558 + ceil32(return_data.size) + idx + 361] = mem[_558 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_558 + ceil32(return_data.size) + 361 len 50], 0
        _540 = mem[64]
        mem[64] = mem[64] + 64
        mem[_540] = tokenByIndex.length
        mem[_540 + 32] = msg.sender
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        mem[0] = tokenByIndex.length
        mem[32] = 3
        stor3[stor2.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if ext_code.size(msg.sender) <= 0:
            idx = idx + 1
            continue 
        _556 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = 0
        mem[mem[64] + 100] = tokenByIndex.length
        mem[mem[64] + 132] = 128
        mem[mem[64] + 164] = 0
        s = 0
        while s < 0:
            mem[mem[64] + s + 196] = mem[_523 + s + 32]
            s = s + 32
            continue 
        _1044 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_1044 + 32] = mem[_1044 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
        mem[64] = _556 + 292
        mem[_556 + 196] = 50
        mem[_556 + 228 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(msg.sender) <= 0:
            revert with 0, 'Address: call to non-contract'
        _1089 = mem[_1044]
        s = 0
        while s < _1089:
            mem[_556 + s + 292] = mem[_1044 + s + 32]
            s = s + 32
            continue 
        if ceil32(_1089) > _1089:
            mem[_556 + _1089 + 292] = 0
        call msg.sender.mem[_556 + 292 len 4] with:
             gas gas_remaining wei
            args mem[_556 + 296 len _1089 - 4]
        if not return_data.size:
            if ext_call.success:
                require mem[96] >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            mem[_556 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_556 + 296] = 32
            idx = 0
            while idx < 50:
                mem[_556 + idx + 360] = mem[_556 + idx + 228]
                idx = idx + 32
                continue 
            revert with 0, 32, 50, mem[_556 + 360 len 50], 0
        mem[64] = _556 + ceil32(return_data.size) + 293
        mem[_556 + 292] = return_data.size
        mem[_556 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            require return_data.size >= 32
            require mem[_556 + 324] == Mask(32, 224, mem[_556 + 324])
            if Mask(32, 224, mem[_556 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_556 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_556 + ceil32(return_data.size) + 297] = 32
        idx = 0
        while idx < 50:
            mem[_556 + ceil32(return_data.size) + idx + 361] = mem[_556 + idx + 228]
            idx = idx + 32
            continue 
        revert with 0, 32, 50, mem[_556 + ceil32(return_data.size) + 361 len 50], 0
}



}
