contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
#
const sub_0cc23225(?) = 61

const sub_2eb524e8(?) = 99

const sub_83eb1288(?) = 6039


mapping of uint8 stor0;
array of struct tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor3;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 name;
array of uint256 symbol;
array of uint256 baseURI;
address owner;
uint256 sub_ec8cc299;
array of uint8 stor12;
array of uint256 stor13;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    require arg2 == arg2
    if tokenOfOwnerByIndex[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor3[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_ec8cc299(?) {
    return sub_ec8cc299
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

function sub_a279e836(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ec8cc299 = arg1
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c40cdc2b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6039
    mem[128] = stor[sha3((2 * arg1) + 13)]
    idx = 128
    s = 0
    while stor[(2 * arg1) + 13].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + 13) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor12[arg1], Array(len=stor[(2 * arg1) + 13].length, data=mem[128 len ceil32(stor[(2 * arg1) + 13].length)])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor3[arg2] - 1 < tokenByIndex.length
    if arg1 == address(tokenByIndex[stor3[arg2] - 1].field_256):
        revert with 0, 32, 33, 0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65, mem[293 len 31]
    if address(tokenByIndex[stor3[arg2] - 1].field_256) != msg.sender:
        if not stor5[address(stor2[stor3[arg2] - 1].field_256)][address(msg.sender)]:
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
    emit Approval(address(tokenByIndex[stor3[arg2] - 1].field_256), arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[304 len 20]
        if approved[arg3] != msg.sender:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
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
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
    emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
    if tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        require tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
        require tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
        tokenOfOwnerByIndex[address(arg1)].field_0--
        tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
    if not tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
        tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
    if stor3[arg3]:
        require stor3[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function sub_33b89355(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    mem[64] = 3360
    mem[3264] = 0
    mem[3296] = 0
    mem[3328] = 96
    mem[var18001] = 3264
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[3264] = 0
        mem[3296] = 0
        mem[3328] = 96
        mem[s + 32] = 3264
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 3168
    _27 = mem[64]
    mem[64] = mem[64] + 96
    mem[_27] = 0
    mem[_27 + 32] = 0
    mem[_27 + 64] = 96
    mem[var26001] = _27
    s = var26001
    idx = var26002
    while idx - 1:
        _27 = mem[64]
        mem[64] = mem[64] + 96
        mem[_27] = 0
        mem[_27 + 32] = 0
        mem[_27 + 64] = 96
        mem[s + 32] = _27
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while uint32(idx) < 99:
        mem[0] = uint32((99 * arg1) + idx)
        mem[32] = 3
        if not stor3[(99 * arg1) + idx << 224]:
            _47 = mem[64]
            mem[64] = mem[64] + 96
            mem[_47] = 0
            require uint32((99 * arg1) + idx) < 6039
            mem[_47 + 32] = stor12[2 * uint32((99 * arg1) + idx)]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(stor[(2 * uint32((99 * arg1) + idx)) + 13].length) + 32
            mem[_49] = stor[(2 * uint32((99 * arg1) + idx)) + 13].length
            mem[0] = (2 * uint32((99 * arg1) + idx)) + 13
            mem[_49 + 32] = stor[sha3((2 * uint32((99 * arg1) + idx)) + 13)]
            s = _49 + 32
            t = sha3(mem[0])
            while _49 + stor[(2 * uint32((99 * arg1) + idx)) + 13].length > s:
                mem[s + 32] = tokenOfOwnerByIndex[t].field_0
                s = s + 32
                t = t + 1
                continue 
            mem[_47 + 64] = _49
            require uint32(idx) < 99
            mem[(32 * uint32(idx)) + _7] = _47
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[64] = mem[64] + 96
        mem[_48] = 41
        mem[_48 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 3
        if not stor3[(99 * arg1) + idx << 224]:
            _53 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[_53 + idx + 68] = mem[_48 + idx + 32]
                idx = idx + 32
                continue 
            mem[_53 + 100] = mem[_53 + 123 len 9]
            revert with memory
              from mem[64]
               len _53 + -mem[64] + 132
        require stor3[(99 * arg1) + idx << 224] - 1 < tokenByIndex.length
        mem[0] = 2
        _62 = mem[64]
        mem[64] = mem[64] + 96
        mem[_62] = address(tokenByIndex[stor3[(99 * arg1) + idx << 224] - 1].field_256)
        require uint32((99 * arg1) + idx) < 6039
        mem[_62 + 32] = stor12[2 * uint32((99 * arg1) + idx)]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * uint32((99 * arg1) + idx)) + 13].length) + 32
        mem[_63] = stor[(2 * uint32((99 * arg1) + idx)) + 13].length
        mem[0] = (2 * uint32((99 * arg1) + idx)) + 13
        mem[_63 + 32] = stor[sha3((2 * uint32((99 * arg1) + idx)) + 13)]
        s = _63 + 32
        t = sha3(mem[0])
        while _63 + stor[(2 * uint32((99 * arg1) + s)) + 13].length > s:
            mem[s + 32] = tokenOfOwnerByIndex[t].field_0
            s = s + 32
            t = t + 1
            continue 
        mem[_62 + 64] = _63
        require uint32(s) < 99
        mem[(32 * uint32(s)) + _7] = _62
        s = s + 1
        continue 
    _45 = mem[64]
    mem[mem[64]] = 32
    idx = 0
    s = _7
    t = mem[64] + 3200
    u = mem[64] + 32
    while idx < 99:
        mem[u] = t + -_45 - 32
        _69 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_69 + 63 len 1]
        _77 = mem[_69 + 64]
        mem[t + 64] = 96
        _78 = mem[_77]
        mem[t + 96] = mem[_77]
        v = 0
        while v < _78:
            mem[t + v + 128] = mem[_77 + v + 32]
            v = v + 32
            continue 
        if ceil32(_78) > _78:
            mem[t + _78 + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_78) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_514fc254(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _49 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == uint32(cd[(cd[4] + cd[s] + 36)])
        mem[_49] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] == uint8(cd[(cd[4] + cd[s] + 68)])
        mem[_49 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] <= test266151307()
        _92 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32
        mem[_92] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_92 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]]
        mem[_92 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_49 + 64] = _92
        mem[t] = _49
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _96 = mem[96]
    idx = 0
    while idx < _96:
        require idx < mem[96]
        _100 = mem[mem[(32 * idx) + 128]]
        _101 = mem[64]
        mem[64] = mem[64] + 96
        mem[_101] = 41
        mem[_101 + 32 len 41] = 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65
        mem[32] = 3
        if not stor3[_100 << 224]:
            _104 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 41
            idx = 0
            while idx < 41:
                mem[_104 + idx + 68] = mem[_101 + idx + 32]
                _96 = mem[96]
                idx = idx + 32
                continue 
            mem[_104 + 100] = mem[_104 + 123 len 9]
            revert with memory
              from mem[64]
               len _104 + -mem[64] + 132
        require stor3[_100 << 224] - 1 < tokenByIndex.length
        mem[0] = 2
        if address(tokenByIndex[stor3[_100 << 224] - 1].field_256) != msg.sender:
            revert with 0, 'Can't paint what you don't own'
        require idx < mem[96]
        require mem[mem[mem[(32 * idx) + 128] + 64]] <= 4
        _120 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_120] = mem[mem[(32 * idx) + 128] + 63 len 1]
        require idx < mem[96]
        mem[_120 + 32] = mem[mem[(32 * idx) + 128] + 64]
        require idx < mem[96]
        _129 = mem[mem[(32 * idx) + 128]]
        require mem[mem[(32 * idx) + 128] + 28 len 4] < 6039
        stor12[2 * uint32(mem[mem[(32 * idx) + 128]])] = mem[_120 + 31 len 1]
        _132 = mem[_120 + 32]
        _133 = mem[mem[_120 + 32]]
        mem[0] = (2 * uint32(mem[mem[(32 * idx) + 128]])) + 13
        if not _133:
            stor13[2 * uint32(_129)] = 0
            s = sha3(mem[0])
            while sha3(mem[0]) + (stor[(2 * uint32(_129)) + 13].length + 31 / 32) > s:
                stor[s] = 0
                _96 = mem[96]
                s = s + 1
                continue 
            _96 = mem[96]
            idx = idx + 1
            continue 
        stor13[2 * uint32(_129)] = (2 * _133) + 1
        t = sha3(mem[0])
        s = _132 + 32
        while _132 + _133 + 32 > s:
            stor[t] = mem[s]
            _96 = mem[96]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(mem[0]) + (Mask(251, 0, _133 + 31) >> 5)
        while sha3(mem[0]) + (stor[(2 * uint32(_129)) + 13].length + 31 / 32) > ('cd', 4).length:
            stor[('cd', 4).length] = 0
            _96 = mem[96]
            s = ('cd', 4).length + 1
            continue 
        _96 = mem[96]
        s = s + 1
        continue 
    _97 = mem[64]
    mem[mem[64]] = 32
    _102 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _102:
        mem[u] = t + -_97 - 64
        _141 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_141 + 63 len 1]
        _150 = mem[_141 + 64]
        mem[t + 64] = 96
        _151 = mem[_150]
        mem[t + 96] = mem[_150]
        v = 0
        while v < _151:
            mem[t + v + 128] = mem[_150 + v + 32]
            v = v + 32
            continue 
        if ceil32(_151) > _151:
            mem[t + _151 + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_151) + 128
        u = u + 32
        continue 
    emit 0xf60122e2: mem[mem[64] len t - mem[64]], msg.sender
}

function sub_cdff814f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == uint32(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if tokenByIndex.length + ('cd', 4).length < tokenByIndex.length:
        revert with 0, 'SafeMath: addition overflow'
    if tokenByIndex.length + ('cd', 4).length > 6039:
        revert with 0, 'Purchase would exceed max supply of real estate'
    if not sub_ec8cc299:
        if 0 > msg.value:
            revert with 0, 'Ether value sent is not correct'
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _1549 = mem[(32 * idx) + 128]
            _1551 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1551] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor3[_1549 << 224]:
                revert with 0, 'ERC721: token already minted'
            if not tokenOfOwnerByIndex[address(msg.sender)][1][_1549 << 224].field_0:
                tokenOfOwnerByIndex[address(msg.sender)].field_0++
                uint32(tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0) = uint32(_1549)
                Mask(224, 0, tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_32) = 0
                tokenOfOwnerByIndex[address(msg.sender)][1][_1549 << 224].field_0 = tokenOfOwnerByIndex[address(msg.sender)].field_0
                mem[0] = uint32(_1549)
                mem[32] = 3
                if stor3[_1549 << 224]:
                    require stor3[_1549 << 224] - 1 < tokenByIndex.length
                    mem[0] = 2
                    address(tokenByIndex[stor3[_1549 << 224] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor3[_1549 << 224] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, uint32(_1549));
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    _1641 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = uint32(_1549)
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_1551 + s + 32]
                        s = s + 32
                        continue 
                    _2334 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2334 + 32] = mem[_2334 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _1641 + 292
                    mem[_1641 + 196] = 50
                    mem[_1641 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1641 + 398 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _2425 = mem[_2334]
                    t = _2334 + 32
                    u = _1641 + 292
                    s = mem[_2334]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1641 + floor32(mem[_2334]) + 292] = mem[_2334 + -(mem[_2334] % 32) + floor32(mem[_2334]) + 64 len mem[_2334] % 32] or Mask(8 * -(mem[_2334] % 32) + 32, -(8 * -(mem[_2334] % 32) + 32) + 256, mem[_1641 + floor32(mem[_2334]) + 292])
                    call msg.sender.mem[_1641 + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[_1641 + 296 len _2425 - 4]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[_1641 + 410 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1641 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1641 + 296] = 32
                        mem[_1641 + 328] = 50
                        idx = 0
                        while idx < 50:
                            mem[_1641 + idx + 360] = mem[_1641 + idx + 228]
                            idx = idx + 32
                            continue 
                        mem[_1641 + 392] = mem[_1641 + 406 len 18]
                        revert with memory
                          from mem[64]
                           len _1641 + -mem[64] + 424
                    mem[64] = _1641 + ceil32(return_data.size) + 293
                    mem[_1641 + 292] = return_data.size
                    mem[_1641 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_1641 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_1641 + ceil32(return_data.size) + 411 len 14]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1641 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1641 + ceil32(return_data.size) + 297] = 32
                    idx = 0
                    while idx < 50:
                        mem[_1641 + ceil32(return_data.size) + idx + 361] = mem[_1641 + idx + 228]
                        idx = idx + 32
                        continue 
                    mem[_1641 + ceil32(return_data.size) + 393] = mem[_1641 + ceil32(return_data.size) + 407 len 18]
                    revert with 0, 32, 50, mem[_1641 + ceil32(return_data.size) + 361 len 64]
                _1595 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1595] = uint32(_1549)
                mem[_1595 + 32] = msg.sender
                tokenByIndex.length++
                uint32(tokenByIndex[tokenByIndex.length].field_0) = uint32(_1549)
                Mask(224, 0, tokenByIndex[tokenByIndex.length].field_32) = 0
                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = uint32(_1549)
                mem[32] = 3
                stor3[_1549 << 224] = tokenByIndex.length
                emit Transfer(0, msg.sender, uint32(_1549));
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _1629 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = uint32(_1549)
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_1551 + s + 32]
                    s = s + 32
                    continue 
                _2338 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_2338 + 32] = mem[_2338 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _1629 + 292
                mem[_1629 + 196] = 50
                mem[_1629 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1629 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _2429 = mem[_2338]
                s = _2338 + 32
                t = _1629 + 292
                idx = mem[_2338]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_1629 + floor32(mem[_2338]) + 292] = mem[_2338 + -(mem[_2338] % 32) + floor32(mem[_2338]) + 64 len mem[_2338] % 32] or Mask(8 * -(mem[_2338] % 32) + 32, -(8 * -(mem[_2338] % 32) + 32) + 256, mem[_1629 + floor32(mem[_2338]) + 292])
                call msg.sender.mem[_1629 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_1629 + 296 len _2429 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_1629 + 410 len 14]
                        s = 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1629 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1629 + 296] = 32
                    mem[_1629 + 328] = 50
                    idx = 0
                    while idx < 50:
                        mem[_1629 + idx + 360] = mem[_1629 + idx + 228]
                        idx = idx + 32
                        continue 
                    mem[_1629 + 392] = mem[_1629 + 406 len 18]
                    revert with memory
                      from mem[64]
                       len _1629 + -mem[64] + 424
                mem[64] = _1629 + ceil32(return_data.size) + 293
                mem[_1629 + 292] = return_data.size
                mem[_1629 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1629 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_1629 + ceil32(return_data.size) + 411 len 14]
                    s = 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1629 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1629 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_1629 + ceil32(return_data.size) + idx + 361] = mem[_1629 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_1629 + ceil32(return_data.size) + 393] = mem[_1629 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 32, 50, mem[_1629 + ceil32(return_data.size) + 361 len 64]
            mem[0] = uint32(_1549)
            mem[32] = 3
            if stor3[_1549 << 224]:
                require stor3[_1549 << 224] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[_1549 << 224] - 1].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[stor3[_1549 << 224] - 1].field_416) = 0
                emit Transfer(0, msg.sender, uint32(_1549));
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _1638 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = uint32(_1549)
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_1551 + s + 32]
                    s = s + 32
                    continue 
                _2326 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_2326 + 32] = mem[_2326 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _1638 + 292
                mem[_1638 + 196] = 50
                mem[_1638 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1638 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _2417 = mem[_2326]
                t = _2326 + 32
                u = mem[64]
                s = mem[_2326]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_2326])] = mem[_2326 + floor32(mem[_2326]) + -(mem[_2326] % 32) + 64 len mem[_2326] % 32] or Mask(8 * -(mem[_2326] % 32) + 32, -(8 * -(mem[_2326] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2326])])
                call msg.sender.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2417 + _1638 + -mem[64] + 288]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    _3136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1638 + 196]
                    _3138 = mem[_1638 + 196]
                    idx = 0
                    while idx < _3138:
                        mem[_3136 + idx + 68] = mem[_1638 + idx + 228]
                        idx = idx + 32
                        continue 
                    if not _3138 % 32:
                        revert with memory
                          from mem[64]
                           len _3138 + _3136 + -mem[64] + 68
                    mem[floor32(_3138) + _3136 + 68] = mem[floor32(_3138) + _3136 + -(_3138 % 32) + 100 len _3138 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3138) + _3136 + -mem[64] + 100
                _3032 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_3032] = return_data.size
                mem[_3032 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_3032 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                _3140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_1638 + 196]
                _3142 = mem[_1638 + 196]
                idx = 0
                while idx < _3142:
                    mem[_3140 + idx + 68] = mem[_1638 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _3142 % 32:
                    revert with memory
                      from mem[64]
                       len _3142 + _3140 + -mem[64] + 68
                mem[floor32(_3142) + _3140 + 68] = mem[floor32(_3142) + _3140 + -(_3142 % 32) + 100 len _3142 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3142) + _3140 + -mem[64] + 100
            _1590 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1590] = uint32(_1549)
            mem[_1590 + 32] = msg.sender
            tokenByIndex.length++
            uint32(tokenByIndex[tokenByIndex.length].field_0) = uint32(_1549)
            Mask(224, 0, tokenByIndex[tokenByIndex.length].field_32) = 0
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            mem[0] = uint32(_1549)
            mem[32] = 3
            stor3[_1549 << 224] = tokenByIndex.length
            emit Transfer(0, msg.sender, uint32(_1549));
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _1626 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = uint32(_1549)
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_1551 + s + 32]
                s = s + 32
                continue 
            _2330 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_2330 + 32] = mem[_2330 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _1626 + 292
            mem[_1626 + 196] = 50
            mem[_1626 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1626 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2421 = mem[_2330]
            s = _2330 + 32
            t = mem[64]
            idx = mem[_2330]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[_2330])] = mem[_2330 + floor32(mem[_2330]) + -(mem[_2330] % 32) + 64 len mem[_2330] % 32] or Mask(8 * -(mem[_2330] % 32) + 32, -(8 * -(mem[_2330] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2330])])
            call msg.sender.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _2421 + _1626 + -mem[64] + 288]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[mem[64] + 118 len 14]
                    s = 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                _3152 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_1626 + 196]
                _3154 = mem[_1626 + 196]
                idx = 0
                while idx < _3154:
                    mem[_3152 + idx + 68] = mem[_1626 + idx + 228]
                    idx = idx + 32
                    continue 
                if not _3154 % 32:
                    revert with memory
                      from mem[64]
                       len _3154 + _3152 + -mem[64] + 68
                mem[floor32(_3154) + _3152 + 68] = mem[floor32(_3154) + _3152 + -(_3154 % 32) + 100 len _3154 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_3154) + _3152 + -mem[64] + 100
            _3034 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3034] = return_data.size
            mem[_3034 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_3034 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[mem[64] + 118 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            _3156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1626 + 196]
            _3158 = mem[_1626 + 196]
            idx = 0
            while idx < _3158:
                mem[_3156 + idx + 68] = mem[_1626 + idx + 228]
                idx = idx + 32
                continue 
            if not _3158 % 32:
                revert with memory
                  from mem[64]
                   len _3158 + _3156 + -mem[64] + 68
            mem[floor32(_3158) + _3156 + 68] = mem[floor32(_3158) + _3156 + -(_3158 % 32) + 100 len _3158 % 32]
            revert with memory
              from mem[64]
               len floor32(_3158) + _3156 + -mem[64] + 100
        _1546 = mem[64]
        mem[mem[64]] = 32
        _1553 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x5165f429: mem[mem[64] len _1546 + (32 * _1553) + -mem[64] + 64], msg.sender
    else:
        require sub_ec8cc299
        if sub_ec8cc299 * ('cd', 4).length / sub_ec8cc299 != ('cd', 4).length:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * ('cd', 4).length) + 229 len 31]
        if sub_ec8cc299 * ('cd', 4).length > msg.value:
            revert with 0, 'Ether value sent is not correct'
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _1548 = mem[(32 * idx) + 128]
            _1550 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1550] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if stor3[_1548 << 224]:
                revert with 0, 'ERC721: token already minted'
            if tokenOfOwnerByIndex[address(msg.sender)][1][_1548 << 224].field_0:
                mem[0] = uint32(_1548)
                mem[32] = 3
                if stor3[_1548 << 224]:
                    require stor3[_1548 << 224] - 1 < tokenByIndex.length
                    mem[0] = 2
                    address(tokenByIndex[stor3[_1548 << 224] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor3[_1548 << 224] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, uint32(_1548));
                    if ext_code.size(msg.sender) <= 0:
                        idx = idx + 1
                        continue 
                    _1632 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = 0
                    mem[mem[64] + 100] = uint32(_1548)
                    mem[mem[64] + 132] = 128
                    mem[mem[64] + 164] = 0
                    s = 0
                    while s < 0:
                        mem[mem[64] + s + 196] = mem[_1550 + s + 32]
                        s = s + 32
                        continue 
                    _2310 = mem[64]
                    mem[mem[64]] = 164
                    mem[64] = mem[64] + 196
                    mem[_2310 + 32] = mem[_2310 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[64] = _1632 + 292
                    mem[_1632 + 196] = 50
                    mem[_1632 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1632 + 398 len 26]
                    if ext_code.size(msg.sender) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    _2401 = mem[_2310]
                    t = _2310 + 32
                    u = mem[64]
                    s = mem[_2310]
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2310])] = mem[_2310 + floor32(mem[_2310]) + -(mem[_2310] % 32) + 64 len mem[_2310] % 32] or Mask(8 * -(mem[_2310] % 32) + 32, -(8 * -(mem[_2310] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2310])])
                    call msg.sender.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2401 + _1632 + -mem[64] + 288]
                    if not return_data.size:
                        if ext_call.success:
                            require mem[96] >= 32
                            if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            50,
                                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                            mem[mem[64] + 118 len 14]
                            idx = idx + 1
                            continue 
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        _3072 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = mem[_1632 + 196]
                        _3074 = mem[_1632 + 196]
                        idx = 0
                        while idx < _3074:
                            mem[_3072 + idx + 68] = mem[_1632 + idx + 228]
                            idx = idx + 32
                            continue 
                        if not _3074 % 32:
                            revert with memory
                              from mem[64]
                               len _3074 + _3072 + -mem[64] + 68
                        mem[floor32(_3074) + _3072 + 68] = mem[floor32(_3074) + _3072 + -(_3074 % 32) + 100 len _3074 % 32]
                        revert with memory
                          from mem[64]
                           len floor32(_3074) + _3072 + -mem[64] + 100
                    _3024 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3024] = return_data.size
                    mem[_3024 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require return_data.size >= 32
                        if Mask(32, 224, mem[_3024 + 32]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[mem[64] + 118 len 14]
                        idx = idx + 1
                        continue 
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_1632 + 196]
                    _3078 = mem[_1632 + 196]
                    idx = 0
                    while idx < _3078:
                        mem[_3076 + idx + 68] = mem[_1632 + idx + 228]
                        idx = idx + 32
                        continue 
                    if not _3078 % 32:
                        revert with memory
                          from mem[64]
                           len _3078 + _3076 + -mem[64] + 68
                    mem[floor32(_3078) + _3076 + 68] = mem[floor32(_3078) + _3076 + -(_3078 % 32) + 100 len _3078 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_3078) + _3076 + -mem[64] + 100
                _1580 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1580] = uint32(_1548)
                mem[_1580 + 32] = msg.sender
                tokenByIndex.length++
                uint32(tokenByIndex[tokenByIndex.length].field_0) = uint32(_1548)
                Mask(224, 0, tokenByIndex[tokenByIndex.length].field_32) = 0
                address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                mem[0] = uint32(_1548)
                mem[32] = 3
                stor3[_1548 << 224] = tokenByIndex.length
                emit Transfer(0, msg.sender, uint32(_1548));
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _1620 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = uint32(_1548)
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_1550 + s + 32]
                    s = s + 32
                    continue 
                _2314 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_2314 + 32] = mem[_2314 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _1620 + 292
                mem[_1620 + 196] = 50
                mem[_1620 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1620 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _2405 = mem[_2314]
                s = _2314 + 32
                t = _1620 + 292
                idx = mem[_2314]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[_1620 + floor32(mem[_2314]) + 292] = mem[_2314 + -(mem[_2314] % 32) + floor32(mem[_2314]) + 64 len mem[_2314] % 32] or Mask(8 * -(mem[_2314] % 32) + 32, -(8 * -(mem[_2314] % 32) + 32) + 256, mem[_1620 + floor32(mem[_2314]) + 292])
                call msg.sender.mem[_1620 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_1620 + 296 len _2405 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_1620 + 410 len 14]
                        s = 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1620 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1620 + 296] = 32
                    mem[_1620 + 328] = 50
                    idx = 0
                    while idx < 50:
                        mem[_1620 + idx + 360] = mem[_1620 + idx + 228]
                        idx = idx + 32
                        continue 
                    mem[_1620 + 392] = mem[_1620 + 406 len 18]
                    revert with memory
                      from mem[64]
                       len _1620 + -mem[64] + 424
                mem[64] = _1620 + ceil32(return_data.size) + 293
                mem[_1620 + 292] = return_data.size
                mem[_1620 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1620 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_1620 + ceil32(return_data.size) + 411 len 14]
                    s = 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1620 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1620 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_1620 + ceil32(return_data.size) + idx + 361] = mem[_1620 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_1620 + ceil32(return_data.size) + 393] = mem[_1620 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 32, 50, mem[_1620 + ceil32(return_data.size) + 361 len 64]
            tokenOfOwnerByIndex[address(msg.sender)].field_0++
            uint32(tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0) = uint32(_1548)
            Mask(224, 0, tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_32) = 0
            tokenOfOwnerByIndex[address(msg.sender)][1][_1548 << 224].field_0 = tokenOfOwnerByIndex[address(msg.sender)].field_0
            mem[0] = uint32(_1548)
            mem[32] = 3
            if stor3[_1548 << 224]:
                require stor3[_1548 << 224] - 1 < tokenByIndex.length
                mem[0] = 2
                address(tokenByIndex[stor3[_1548 << 224] - 1].field_256) = msg.sender
                Mask(96, 0, tokenByIndex[stor3[_1548 << 224] - 1].field_416) = 0
                emit Transfer(0, msg.sender, uint32(_1548));
                if ext_code.size(msg.sender) <= 0:
                    idx = idx + 1
                    continue 
                _1635 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = uint32(_1548)
                mem[mem[64] + 132] = 128
                mem[mem[64] + 164] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 196] = mem[_1550 + s + 32]
                    s = s + 32
                    continue 
                _2318 = mem[64]
                mem[mem[64]] = 164
                mem[64] = mem[64] + 196
                mem[_2318 + 32] = mem[_2318 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[64] = _1635 + 292
                mem[_1635 + 196] = 50
                mem[_1635 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1635 + 398 len 26]
                if ext_code.size(msg.sender) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _2409 = mem[_2318]
                t = _2318 + 32
                u = _1635 + 292
                s = mem[_2318]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_1635 + floor32(mem[_2318]) + 292] = mem[_2318 + -(mem[_2318] % 32) + floor32(mem[_2318]) + 64 len mem[_2318] % 32] or Mask(8 * -(mem[_2318] % 32) + 32, -(8 * -(mem[_2318] % 32) + 32) + 256, mem[_1635 + floor32(mem[_2318]) + 292])
                call msg.sender.mem[_1635 + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[_1635 + 296 len _2409 - 4]
                if not return_data.size:
                    if ext_call.success:
                        require mem[96] >= 32
                        if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        50,
                                        0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                        mem[_1635 + 410 len 14]
                        idx = idx + 1
                        continue 
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1635 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1635 + 296] = 32
                    mem[_1635 + 328] = 50
                    idx = 0
                    while idx < 50:
                        mem[_1635 + idx + 360] = mem[_1635 + idx + 228]
                        idx = idx + 32
                        continue 
                    mem[_1635 + 392] = mem[_1635 + 406 len 18]
                    revert with memory
                      from mem[64]
                       len _1635 + -mem[64] + 424
                mem[64] = _1635 + ceil32(return_data.size) + 293
                mem[_1635 + 292] = return_data.size
                mem[_1635 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require return_data.size >= 32
                    if Mask(32, 224, mem[_1635 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_1635 + ceil32(return_data.size) + 411 len 14]
                    idx = idx + 1
                    continue 
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1635 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1635 + ceil32(return_data.size) + 297] = 32
                idx = 0
                while idx < 50:
                    mem[_1635 + ceil32(return_data.size) + idx + 361] = mem[_1635 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_1635 + ceil32(return_data.size) + 393] = mem[_1635 + ceil32(return_data.size) + 407 len 18]
                revert with 0, 32, 50, mem[_1635 + ceil32(return_data.size) + 361 len 64]
            _1585 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1585] = uint32(_1548)
            mem[_1585 + 32] = msg.sender
            tokenByIndex.length++
            uint32(tokenByIndex[tokenByIndex.length].field_0) = uint32(_1548)
            Mask(224, 0, tokenByIndex[tokenByIndex.length].field_32) = 0
            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
            mem[0] = uint32(_1548)
            mem[32] = 3
            stor3[_1548 << 224] = tokenByIndex.length
            emit Transfer(0, msg.sender, uint32(_1548));
            if ext_code.size(msg.sender) <= 0:
                idx = idx + 1
                continue 
            _1623 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = 0
            mem[mem[64] + 100] = uint32(_1548)
            mem[mem[64] + 132] = 128
            mem[mem[64] + 164] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 196] = mem[_1550 + s + 32]
                s = s + 32
                continue 
            _2322 = mem[64]
            mem[mem[64]] = 164
            mem[64] = mem[64] + 196
            mem[_2322 + 32] = mem[_2322 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[64] = _1623 + 292
            mem[_1623 + 196] = 50
            mem[_1623 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1623 + 398 len 26]
            if ext_code.size(msg.sender) <= 0:
                revert with 0, 'Address: call to non-contract'
            _2413 = mem[_2322]
            s = _2322 + 32
            t = _1623 + 292
            idx = mem[_2322]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[_1623 + floor32(mem[_2322]) + 292] = mem[_2322 + -(mem[_2322] % 32) + floor32(mem[_2322]) + 64 len mem[_2322] % 32] or Mask(8 * -(mem[_2322] % 32) + 32, -(8 * -(mem[_2322] % 32) + 32) + 256, mem[_1623 + floor32(mem[_2322]) + 292])
            call msg.sender.mem[_1623 + 292 len 4] with:
                 gas gas_remaining wei
                args mem[_1623 + 296 len _2413 - 4]
            if not return_data.size:
                if ext_call.success:
                    require mem[96] >= 32
                    if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    50,
                                    0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                    mem[_1623 + 410 len 14]
                    s = 1
                    continue 
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_1623 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1623 + 296] = 32
                mem[_1623 + 328] = 50
                idx = 0
                while idx < 50:
                    mem[_1623 + idx + 360] = mem[_1623 + idx + 228]
                    idx = idx + 32
                    continue 
                mem[_1623 + 392] = mem[_1623 + 406 len 18]
                revert with memory
                  from mem[64]
                   len _1623 + -mem[64] + 424
            mem[64] = _1623 + ceil32(return_data.size) + 293
            mem[_1623 + 292] = return_data.size
            mem[_1623 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, mem[_1623 + 324]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                50,
                                0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                                mem[_1623 + ceil32(return_data.size) + 411 len 14]
                s = 1
                continue 
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_1623 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1623 + ceil32(return_data.size) + 297] = 32
            idx = 0
            while idx < 50:
                mem[_1623 + ceil32(return_data.size) + idx + 361] = mem[_1623 + idx + 228]
                idx = idx + 32
                continue 
            mem[_1623 + ceil32(return_data.size) + 393] = mem[_1623 + ceil32(return_data.size) + 407 len 18]
            revert with 0, 32, 50, mem[_1623 + ceil32(return_data.size) + 361 len 64]
        _1544 = mem[64]
        mem[mem[64]] = 32
        _1552 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < mem[96]:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x5165f429: mem[mem[64] len _1544 + (32 * _1552) + -mem[64] + 64], msg.sender
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x6c4552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if msg.sender == address(tokenByIndex[stor3[arg3] - 1].field_256):
        if not stor3[arg3]:
            revert with 0, 
                        32,
                        41,
                        0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[297 len 23],
                        mem[343 len 9]
        require stor3[arg3] - 1 < tokenByIndex.length
        if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
        emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
        if not tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
            if tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
            else:
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
        else:
            require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            require tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
            require tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
            tokenOfOwnerByIndex[address(arg1)].field_0--
            tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
            if tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
            else:
                tokenOfOwnerByIndex[address(arg2)].field_0++
                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
    else:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] == msg.sender:
            if not stor3[arg3]:
                revert with 0, 
                            32,
                            41,
                            0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                            mem[297 len 23],
                            mem[343 len 9]
            require stor3[arg3] - 1 < tokenByIndex.length
            if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
            emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
                if not tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                if stor3[arg3]:
                    require stor3[arg3] - 1 < tokenByIndex.length
                    address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                    Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                        if ext_code.size(arg2) <= 0:
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
                    address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    stor3[arg3] = tokenByIndex.length
                    emit Transfer(arg1, arg2, arg3);
                    if ext_code.size(arg2) > 0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                        if ext_code.size(arg2) <= 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
                if tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
                else:
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
        else:
            if not stor5[address(stor2[stor3[arg3] - 1].field_256)][address(msg.sender)]:
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
            if address(tokenByIndex[stor3[arg3] - 1].field_256) != arg1:
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
            emit Approval(address(tokenByIndex[stor3[arg3] - 1].field_256), 0, arg3);
            if not tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0:
                if tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
                else:
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
            else:
                require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                require tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
                tokenOfOwnerByIndex[address(arg1)][1][tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0].field_0 = tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0
                require tokenOfOwnerByIndex[address(arg1)].field_0
                tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = 0
                tokenOfOwnerByIndex[address(arg1)].field_0--
                tokenOfOwnerByIndex[address(arg1)][1][arg3].field_0 = 0
                if tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0:
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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
                else:
                    tokenOfOwnerByIndex[address(arg2)].field_0++
                    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
                    tokenOfOwnerByIndex[address(arg2)][1][arg3].field_0 = tokenOfOwnerByIndex[address(arg2)].field_0
                    if stor3[arg3]:
                        require stor3[arg3] - 1 < tokenByIndex.length
                        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
                        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
                            if ext_code.size(arg2) <= 0:
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
                        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        stor3[arg3] = tokenByIndex.length
                        emit Transfer(arg1, arg2, arg3);
                        if ext_code.size(arg2) > 0:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
                            if ext_code.size(arg2) <= 0:
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



}
