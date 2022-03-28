contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
array of uint256 tokenOfOwnerByIndex;
array of struct tokenByIndex;
mapping of uint256 stor4;
mapping of address approved;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
array of struct stor10;
array of struct baseURI;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor4[arg1]
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
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

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor4[arg1] - 1 < tokenByIndex.length
    return address(tokenByIndex[stor4[arg1] - 1].field_256)
}

function baseURI() {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor7[address(arg1)][address(arg2)])
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor7[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getNFTPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 2
    require arg1 >= 0
    if not arg1:
        return 2 * 10^16
    if arg1 == 1:
        return 3 * 10^16
    if arg1 != 2:
        return 0
    return 4 * 10^16
}

function withdrawOwner() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseURI[].field_0 = Array(len=arg1.length, data=arg1[all])
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

function updateURI(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[arg1]:
        revert with 0, 
                    32,
                    44,
                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg2.length) + 240 len 20]
    stor10[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor4[arg2] - 1 < tokenByIndex.length
    require arg1 != address(tokenByIndex[stor4[arg2] - 1].field_256)
    if address(tokenByIndex[stor4[arg2] - 1].field_256) != msg.sender:
        require stor7[address(stor3[stor4[arg2] - 1].field_256)][address(msg.sender)]
    approved[arg2] = arg1
    if not stor4[arg2]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor4[arg2] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor4[arg2] - 1].field_256), arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require stor4[arg3]
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[169 len 23],
                    mem[215 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != msg.sender:
        require stor4[arg3]
        if approved[arg3] != msg.sender:
            require stor7[address(stor3[stor4[arg3] - 1].field_256)][address(msg.sender)]
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[265 len 23],
                    mem[311 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    require address(tokenByIndex[stor4[arg3] - 1].field_256) == arg1
    require arg2
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[361 len 23],
                    mem[407 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor4[arg3] - 1].field_256), 0, arg3);
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
    if stor4[arg3]:
        require stor4[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor4[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor4[arg3] - 1].field_416) = 0
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg3] = tokenByIndex.length
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require stor4[arg3]
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor4[arg3] - 1].field_256) != msg.sender:
        require stor4[arg3]
        if approved[arg3] != msg.sender:
            require stor7[address(stor3[stor4[arg3] - 1].field_256)][address(msg.sender)]
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[297 len 23],
                    mem[343 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    require address(tokenByIndex[stor4[arg3] - 1].field_256) == arg1
    require arg2
    approved[arg3] = 0
    if not stor4[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x6c4552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[393 len 23],
                    mem[439 len 9]
    require stor4[arg3] - 1 < tokenByIndex.length
    emit Approval(address(tokenByIndex[stor4[arg3] - 1].field_256), 0, arg3);
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
    if stor4[arg3]:
        require stor4[arg3] - 1 < tokenByIndex.length
        address(tokenByIndex[stor4[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor4[arg3] - 1].field_416) = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[814 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[708 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
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
            require Mask(32, 224, mem[740]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg3
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor4[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[878 len 26]
            if ext_code.size(arg2) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[772 len 160] = onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4), msg.sender, address(arg1), arg3, 128, 0
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
            require Mask(32, 224, mem[804]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor4[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 10
    mem[64] = ceil32(stor10[arg1].length) + 128
    mem[96] = stor10[arg1].length
    mem[128] = stor10[arg1].field_0
    idx = 128
    s = 0
    while stor10[arg1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not Mask(255, 1, (256 * not bool(baseURI.length)) - 1 and baseURI.length):
        var23001 = ceil32(stor10[arg1].length)
        return Array(len=stor10[arg1].length, data=mem[128 len stor10[arg1].length])
    if stor10[arg1].length > 0:
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 160] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 128 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 160 len floor32(stor10[arg1].length)] = mem[128 len floor32(stor10[arg1].length)]
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(stor10[arg1].length) + 160] = mem[floor32(stor10[arg1].length) + -stor10[arg1].length % 32 + 160 len stor10[arg1].length % 32] or Mask(8 * -stor10[arg1].length % 32 + 32, -(8 * -stor10[arg1].length % 32 + 32) + 256, mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(stor10[arg1].length) + 160])
        _1006 = mem[64]
        mem[64] = stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 160
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 160] = 32
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192] = mem[_1006]
        _1077 = mem[_1006]
        mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 224 len ceil32(mem[_1006])] = mem[_1006 + 32 len ceil32(mem[_1006])]
        var33001 = ceil32(_1077)
        if not _1077 % 32:
            return 32, mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192 len _1077 + 32]
        mem[floor32(_1077) + stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 224] = mem[floor32(_1077) + stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + -(_1077 % 32) + 256 len _1077 % 32]
        return 32, mem[stor10[arg1].length + ceil32(stor10[arg1].length) + baseURI.length + 192 len floor32(_1077) + 64]
    if not arg1:
        mem[64] = ceil32(stor10[arg1].length) + 192
        mem[ceil32(stor10[arg1].length) + 128] = 1
        mem[ceil32(stor10[arg1].length) + 160] = '0'
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + 224] = uint256(baseURI.field_0)
        idx = mem[64] + 32
        s = 0
        while ceil32(stor10[arg1].length) + baseURI.length + 192 > idx:
            mem[idx + 32] = baseURI[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(stor10[arg1].length) + baseURI.length + 224 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        var32001 = ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + 160
        mem[ceil32(stor10[arg1].length) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 256 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1002 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 224] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256] = mem[_1002]
        _1074 = mem[_1002]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288 len ceil32(mem[_1002])] = mem[_1002 + 32 len ceil32(mem[_1002])]
        if not _1074 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len _1074 + 32]
        mem[floor32(_1074) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 288] = mem[floor32(_1074) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + -(_1074 % 32) + 320 len _1074 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + baseURI.length + 256 len floor32(_1074) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor10[arg1].length) + 128] = s
    mem[64] = ceil32(stor10[arg1].length) + ceil32(s) + 160
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < s
            mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[0] = 11
        mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
        t = mem[64] + 32
        u = 0
        while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
            mem[t + 32] = baseURI[u].field_256
            t = t + 32
            u = u + 1
            continue 
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
        mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
        _1232 = mem[64]
        mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1232]
        _1252 = mem[_1232]
        mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1232])] = mem[_1232 + 32 len ceil32(mem[_1232])]
        if not _1252 % 32:
            return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1252 + 32], 
        mem[floor32(_1252) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1252) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1252 % 32) + 288 len _1252 % 32]
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1252) + 64], 
    mem[ceil32(stor10[arg1].length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(stor10[arg1].length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[0] = 11
    mem[ceil32(stor10[arg1].length) + ceil32(s) + 192] = uint256(baseURI.field_0)
    t = mem[64] + 32
    u = 0
    while ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 160 > t:
        mem[t + 32] = baseURI[u].field_256
        t = t + 32
        u = u + 1
        continue 
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192 len floor32(mem[ceil32(stor10[arg1].length) + 128])] = mem[ceil32(stor10[arg1].length) + 160 len floor32(mem[ceil32(stor10[arg1].length) + 128])]
    mem[ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 224 len mem[ceil32(stor10[arg1].length) + 128] % 32] = mem[ceil32(stor10[arg1].length) + floor32(mem[ceil32(stor10[arg1].length) + 128]) + -(mem[ceil32(stor10[arg1].length) + 128] % 32) + 192 len mem[ceil32(stor10[arg1].length) + 128] % 32]
    _1236 = mem[64]
    mem[64] = mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 192] = 32
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224] = mem[_1236]
    _1255 = mem[_1236]
    mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[_1236])] = mem[_1236 + 32 len ceil32(mem[_1236])]
    if not _1255 % 32:
        return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len _1255 + 32], 
    mem[floor32(_1255) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 256] = mem[floor32(_1255) + mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + -(_1255 % 32) + 288 len _1255 % 32]
    return 32, mem[mem[ceil32(stor10[arg1].length) + 128] + ceil32(stor10[arg1].length) + ceil32(s) + baseURI.length + 224 len floor32(_1255) + 64], 
}

function sub_8f63e06a(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg1 > 0
    require arg1 <= 50
    require 0 <= arg2
    require 2 >= arg2
    require arg2 <= 2
    require arg2 >= 0
    if not arg2:
        if 2 * 10^16 * arg1 / 2 * 10^16 != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg3.length) + 229 len 31]
        require 2 * 10^16 * arg1 == msg.value
        idx = 0
        while idx < arg1:
            _1995 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1995] = 0
            require msg.sender
            require not stor4[stor3.length]
            if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                mem[0] = tokenByIndex.length
                mem[32] = 4
                if stor4[stor3.length]:
                    require stor4[stor3.length] - 1 < tokenByIndex.length
                    mem[0] = 3
                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) <= 0:
                        if not stor4[stor3.length]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                    else:
                        _2146 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 196] = mem[_1995 + s + 32]
                            s = s + 32
                            continue 
                        _4056 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_4056 + 32] = mem[_4056 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _2146 + 292
                        mem[_2146 + 196] = 50
                        mem[_2146 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2146 + 398 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _4233 = mem[_4056]
                        t = _4056 + 32
                        u = _2146 + 292
                        s = mem[_4056]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2146 + floor32(mem[_4056]) + 292] = mem[_4056 + -(mem[_4056] % 32) + floor32(mem[_4056]) + 64 len mem[_4056] % 32] or Mask(8 * -(mem[_4056] % 32) + 32, -(8 * -(mem[_4056] % 32) + 32) + 256, mem[_2146 + floor32(mem[_4056]) + 292])
                        call msg.sender.mem[_2146 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_2146 + 296 len _4233 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_2146 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2146 + 296] = 32
                                mem[_2146 + 328] = 50
                                idx = 0
                                while idx < 50:
                                    mem[_2146 + idx + 360] = mem[_2146 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2146 + 392] = mem[_2146 + 406 len 18]
                                revert with memory
                                  from mem[64]
                                   len _2146 + -mem[64] + 424
                            require mem[96] >= 32
                            require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2146 + 404 len 20]
                        else:
                            mem[64] = _2146 + ceil32(return_data.size) + 293
                            mem[_2146 + 292] = return_data.size
                            mem[_2146 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2146 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2146 + ceil32(return_data.size) + 297] = 32
                                idx = 0
                                while idx < 50:
                                    mem[_2146 + ceil32(return_data.size) + idx + 361] = mem[_2146 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2146 + ceil32(return_data.size) + 393] = mem[_2146 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 32, 50, mem[_2146 + ceil32(return_data.size) + 361 len 64]
                            require return_data.size >= 32
                            require Mask(32, 224, mem[_2146 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2146 + ceil32(return_data.size) + 405 len 20]
                else:
                    _2054 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2054] = tokenByIndex.length
                    mem[_2054 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    stor4[stor3.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) <= 0:
                        if not stor4[stor3.length]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                    else:
                        _2122 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 196] = mem[_1995 + s + 32]
                            s = s + 32
                            continue 
                        _4060 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_4060 + 32] = mem[_4060 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _2122 + 292
                        mem[_2122 + 196] = 50
                        mem[_2122 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2122 + 398 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _4237 = mem[_4060]
                        t = _4060 + 32
                        u = _2122 + 292
                        s = mem[_4060]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2122 + floor32(mem[_4060]) + 292] = mem[_4060 + -(mem[_4060] % 32) + floor32(mem[_4060]) + 64 len mem[_4060] % 32] or Mask(8 * -(mem[_4060] % 32) + 32, -(8 * -(mem[_4060] % 32) + 32) + 256, mem[_2122 + floor32(mem[_4060]) + 292])
                        call msg.sender.mem[_2122 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_2122 + 296 len _4237 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_2122 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2122 + 296] = 32
                                mem[_2122 + 328] = 50
                                idx = 0
                                while idx < 50:
                                    mem[_2122 + idx + 360] = mem[_2122 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2122 + 392] = mem[_2122 + 406 len 18]
                                revert with memory
                                  from mem[64]
                                   len _2122 + -mem[64] + 424
                            require mem[96] >= 32
                            require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2122 + 404 len 20]
                        else:
                            mem[64] = _2122 + ceil32(return_data.size) + 293
                            mem[_2122 + 292] = return_data.size
                            mem[_2122 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2122 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2122 + ceil32(return_data.size) + 297] = 32
                                idx = 0
                                while idx < 50:
                                    mem[_2122 + ceil32(return_data.size) + idx + 361] = mem[_2122 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2122 + ceil32(return_data.size) + 393] = mem[_2122 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 32, 50, mem[_2122 + ceil32(return_data.size) + 361 len 64]
                            require return_data.size >= 32
                            require Mask(32, 224, mem[_2122 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2122 + ceil32(return_data.size) + 405 len 20]
            else:
                tokenOfOwnerByIndex[address(msg.sender)]++
                tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                mem[0] = tokenByIndex.length
                mem[32] = 4
                if stor4[stor3.length]:
                    require stor4[stor3.length] - 1 < tokenByIndex.length
                    mem[0] = 3
                    address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) <= 0:
                        if not stor4[stor3.length]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                    else:
                        _2149 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 196] = mem[_1995 + s + 32]
                            s = s + 32
                            continue 
                        _4064 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_4064 + 32] = mem[_4064 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _2149 + 292
                        mem[_2149 + 196] = 50
                        mem[_2149 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2149 + 398 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _4241 = mem[_4064]
                        t = _4064 + 32
                        u = _2149 + 292
                        s = mem[_4064]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2149 + floor32(mem[_4064]) + 292] = mem[_4064 + -(mem[_4064] % 32) + floor32(mem[_4064]) + 64 len mem[_4064] % 32] or Mask(8 * -(mem[_4064] % 32) + 32, -(8 * -(mem[_4064] % 32) + 32) + 256, mem[_2149 + floor32(mem[_4064]) + 292])
                        call msg.sender.mem[_2149 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_2149 + 296 len _4241 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_2149 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2149 + 296] = 32
                                mem[_2149 + 328] = 50
                                idx = 0
                                while idx < 50:
                                    mem[_2149 + idx + 360] = mem[_2149 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2149 + 392] = mem[_2149 + 406 len 18]
                                revert with memory
                                  from mem[64]
                                   len _2149 + -mem[64] + 424
                            require mem[96] >= 32
                            require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2149 + 404 len 20]
                        else:
                            mem[64] = _2149 + ceil32(return_data.size) + 293
                            mem[_2149 + 292] = return_data.size
                            mem[_2149 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2149 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2149 + ceil32(return_data.size) + 297] = 32
                                idx = 0
                                while idx < 50:
                                    mem[_2149 + ceil32(return_data.size) + idx + 361] = mem[_2149 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2149 + ceil32(return_data.size) + 393] = mem[_2149 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 32, 50, mem[_2149 + ceil32(return_data.size) + 361 len 64]
                            require return_data.size >= 32
                            require Mask(32, 224, mem[_2149 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2149 + ceil32(return_data.size) + 405 len 20]
                else:
                    _2059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2059] = tokenByIndex.length
                    mem[_2059 + 32] = msg.sender
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                    address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                    Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    stor4[stor3.length] = tokenByIndex.length
                    emit Transfer(0, msg.sender, tokenByIndex.length);
                    if ext_code.size(msg.sender) <= 0:
                        if not stor4[stor3.length]:
                            revert with 0, 
                                        32,
                                        44,
                                        0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                        mem[mem[64] + 112 len 20]
                    else:
                        _2125 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = tokenByIndex.length
                        mem[mem[64] + 132] = 128
                        mem[mem[64] + 164] = 0
                        s = 0
                        while s < 0:
                            mem[mem[64] + s + 196] = mem[_1995 + s + 32]
                            s = s + 32
                            continue 
                        _4068 = mem[64]
                        mem[mem[64]] = 164
                        mem[64] = mem[64] + 196
                        mem[_4068 + 32] = mem[_4068 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[64] = _2125 + 292
                        mem[_2125 + 196] = 50
                        mem[_2125 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2125 + 398 len 26]
                        if ext_code.size(msg.sender) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        _4245 = mem[_4068]
                        t = _4068 + 32
                        u = _2125 + 292
                        s = mem[_4068]
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_2125 + floor32(mem[_4068]) + 292] = mem[_4068 + -(mem[_4068] % 32) + floor32(mem[_4068]) + 64 len mem[_4068] % 32] or Mask(8 * -(mem[_4068] % 32) + 32, -(8 * -(mem[_4068] % 32) + 32) + 256, mem[_2125 + floor32(mem[_4068]) + 292])
                        call msg.sender.mem[_2125 + 292 len 4] with:
                             gas gas_remaining wei
                            args mem[_2125 + 296 len _4245 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96] > 0:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_2125 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2125 + 296] = 32
                                mem[_2125 + 328] = 50
                                idx = 0
                                while idx < 50:
                                    mem[_2125 + idx + 360] = mem[_2125 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2125 + 392] = mem[_2125 + 406 len 18]
                                revert with memory
                                  from mem[64]
                                   len _2125 + -mem[64] + 424
                            require mem[96] >= 32
                            require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2125 + 404 len 20]
                        else:
                            mem[64] = _2125 + ceil32(return_data.size) + 293
                            mem[_2125 + 292] = return_data.size
                            mem[_2125 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_2125 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_2125 + ceil32(return_data.size) + 297] = 32
                                idx = 0
                                while idx < 50:
                                    mem[_2125 + ceil32(return_data.size) + idx + 361] = mem[_2125 + idx + 228]
                                    idx = idx + 32
                                    continue 
                                mem[_2125 + ceil32(return_data.size) + 393] = mem[_2125 + ceil32(return_data.size) + 407 len 18]
                                revert with 0, 32, 50, mem[_2125 + ceil32(return_data.size) + 361 len 64]
                            require return_data.size >= 32
                            require Mask(32, 224, mem[_2125 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[_2125 + ceil32(return_data.size) + 405 len 20]
            ('bool', ('stor', ('map', ('stor', ('length', ('name', 'stor3', 3))), ('name', 'stor4', 4))))
            mem[32] = 10
            mem[0] = sha3(tokenByIndex.length, 10)
            stor10[stor3.length].field_0 = (2 * mem[96]) + 1
            t = sha3(sha3(tokenByIndex.length, 10))
            s = 128
            while mem[96] + 128 > s:
                stor[t] = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(tokenByIndex.length, 10)) + (Mask(251, 0, mem[96] + 31) >> 5)
            while sha3(sha3(tokenByIndex.length, 10)) + (stor10[stor3.length].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        if arg2 == 1:
            if 3 * 10^16 * arg1 / 3 * 10^16 != arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg3.length) + 229 len 31]
            require 3 * 10^16 * arg1 == msg.value
            idx = 0
            while idx < arg1:
                _1994 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1994] = 0
                require msg.sender
                require not stor4[stor3.length]
                if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        require stor4[stor3.length] - 1 < tokenByIndex.length
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) <= 0:
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[mem[64] + 112 len 20]
                        else:
                            _2140 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_1994 + s + 32]
                                s = s + 32
                                continue 
                            _4040 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_4040 + 32] = mem[_4040 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _2140 + 292
                            mem[_2140 + 196] = 50
                            mem[_2140 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2140 + 398 len 26]
                            if ext_code.size(msg.sender) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _4217 = mem[_4040]
                            t = _4040 + 32
                            u = _2140 + 292
                            s = mem[_4040]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2140 + floor32(mem[_4040]) + 292] = mem[_4040 + -(mem[_4040] % 32) + floor32(mem[_4040]) + 64 len mem[_4040] % 32] or Mask(8 * -(mem[_4040] % 32) + 32, -(8 * -(mem[_4040] % 32) + 32) + 256, mem[_2140 + floor32(mem[_4040]) + 292])
                            call msg.sender.mem[_2140 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2140 + 296 len _4217 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_2140 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2140 + 296] = 32
                                    mem[_2140 + 328] = 50
                                    idx = 0
                                    while idx < 50:
                                        mem[_2140 + idx + 360] = mem[_2140 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2140 + 392] = mem[_2140 + 406 len 18]
                                    revert with memory
                                      from mem[64]
                                       len _2140 + -mem[64] + 424
                                require mem[96] >= 32
                                require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2140 + 404 len 20]
                            else:
                                mem[64] = _2140 + ceil32(return_data.size) + 293
                                mem[_2140 + 292] = return_data.size
                                mem[_2140 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2140 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2140 + ceil32(return_data.size) + 297] = 32
                                    idx = 0
                                    while idx < 50:
                                        mem[_2140 + ceil32(return_data.size) + idx + 361] = mem[_2140 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2140 + ceil32(return_data.size) + 393] = mem[_2140 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 32, 50, mem[_2140 + ceil32(return_data.size) + 361 len 64]
                                require return_data.size >= 32
                                require Mask(32, 224, mem[_2140 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2140 + ceil32(return_data.size) + 405 len 20]
                    else:
                        _2044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2044] = tokenByIndex.length
                        mem[_2044 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) <= 0:
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[mem[64] + 112 len 20]
                        else:
                            _2116 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_1994 + s + 32]
                                s = s + 32
                                continue 
                            _4044 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_4044 + 32] = mem[_4044 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _2116 + 292
                            mem[_2116 + 196] = 50
                            mem[_2116 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2116 + 398 len 26]
                            if ext_code.size(msg.sender) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _4221 = mem[_4044]
                            t = _4044 + 32
                            u = _2116 + 292
                            s = mem[_4044]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2116 + floor32(mem[_4044]) + 292] = mem[_4044 + -(mem[_4044] % 32) + floor32(mem[_4044]) + 64 len mem[_4044] % 32] or Mask(8 * -(mem[_4044] % 32) + 32, -(8 * -(mem[_4044] % 32) + 32) + 256, mem[_2116 + floor32(mem[_4044]) + 292])
                            call msg.sender.mem[_2116 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2116 + 296 len _4221 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_2116 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2116 + 296] = 32
                                    mem[_2116 + 328] = 50
                                    idx = 0
                                    while idx < 50:
                                        mem[_2116 + idx + 360] = mem[_2116 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2116 + 392] = mem[_2116 + 406 len 18]
                                    revert with memory
                                      from mem[64]
                                       len _2116 + -mem[64] + 424
                                require mem[96] >= 32
                                require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2116 + 404 len 20]
                            else:
                                mem[64] = _2116 + ceil32(return_data.size) + 293
                                mem[_2116 + 292] = return_data.size
                                mem[_2116 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2116 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2116 + ceil32(return_data.size) + 297] = 32
                                    idx = 0
                                    while idx < 50:
                                        mem[_2116 + ceil32(return_data.size) + idx + 361] = mem[_2116 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2116 + ceil32(return_data.size) + 393] = mem[_2116 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 32, 50, mem[_2116 + ceil32(return_data.size) + 361 len 64]
                                require return_data.size >= 32
                                require Mask(32, 224, mem[_2116 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2116 + ceil32(return_data.size) + 405 len 20]
                else:
                    tokenOfOwnerByIndex[address(msg.sender)]++
                    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                    tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                    mem[0] = tokenByIndex.length
                    mem[32] = 4
                    if stor4[stor3.length]:
                        require stor4[stor3.length] - 1 < tokenByIndex.length
                        mem[0] = 3
                        address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) <= 0:
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[mem[64] + 112 len 20]
                        else:
                            _2143 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_1994 + s + 32]
                                s = s + 32
                                continue 
                            _4048 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_4048 + 32] = mem[_4048 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _2143 + 292
                            mem[_2143 + 196] = 50
                            mem[_2143 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2143 + 398 len 26]
                            if ext_code.size(msg.sender) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _4225 = mem[_4048]
                            t = _4048 + 32
                            u = _2143 + 292
                            s = mem[_4048]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2143 + floor32(mem[_4048]) + 292] = mem[_4048 + -(mem[_4048] % 32) + floor32(mem[_4048]) + 64 len mem[_4048] % 32] or Mask(8 * -(mem[_4048] % 32) + 32, -(8 * -(mem[_4048] % 32) + 32) + 256, mem[_2143 + floor32(mem[_4048]) + 292])
                            call msg.sender.mem[_2143 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2143 + 296 len _4225 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_2143 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2143 + 296] = 32
                                    mem[_2143 + 328] = 50
                                    idx = 0
                                    while idx < 50:
                                        mem[_2143 + idx + 360] = mem[_2143 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2143 + 392] = mem[_2143 + 406 len 18]
                                    revert with memory
                                      from mem[64]
                                       len _2143 + -mem[64] + 424
                                require mem[96] >= 32
                                require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2143 + 404 len 20]
                            else:
                                mem[64] = _2143 + ceil32(return_data.size) + 293
                                mem[_2143 + 292] = return_data.size
                                mem[_2143 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2143 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2143 + ceil32(return_data.size) + 297] = 32
                                    idx = 0
                                    while idx < 50:
                                        mem[_2143 + ceil32(return_data.size) + idx + 361] = mem[_2143 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2143 + ceil32(return_data.size) + 393] = mem[_2143 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 32, 50, mem[_2143 + ceil32(return_data.size) + 361 len 64]
                                require return_data.size >= 32
                                require Mask(32, 224, mem[_2143 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2143 + ceil32(return_data.size) + 405 len 20]
                    else:
                        _2049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2049] = tokenByIndex.length
                        mem[_2049 + 32] = msg.sender
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                        address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        stor4[stor3.length] = tokenByIndex.length
                        emit Transfer(0, msg.sender, tokenByIndex.length);
                        if ext_code.size(msg.sender) <= 0:
                            if not stor4[stor3.length]:
                                revert with 0, 
                                            32,
                                            44,
                                            0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                            mem[mem[64] + 112 len 20]
                        else:
                            _2119 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = tokenByIndex.length
                            mem[mem[64] + 132] = 128
                            mem[mem[64] + 164] = 0
                            s = 0
                            while s < 0:
                                mem[mem[64] + s + 196] = mem[_1994 + s + 32]
                                s = s + 32
                                continue 
                            _4052 = mem[64]
                            mem[mem[64]] = 164
                            mem[64] = mem[64] + 196
                            mem[_4052 + 32] = mem[_4052 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[64] = _2119 + 292
                            mem[_2119 + 196] = 50
                            mem[_2119 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2119 + 398 len 26]
                            if ext_code.size(msg.sender) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            _4229 = mem[_4052]
                            t = _4052 + 32
                            u = _2119 + 292
                            s = mem[_4052]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_2119 + floor32(mem[_4052]) + 292] = mem[_4052 + -(mem[_4052] % 32) + floor32(mem[_4052]) + 64 len mem[_4052] % 32] or Mask(8 * -(mem[_4052] % 32) + 32, -(8 * -(mem[_4052] % 32) + 32) + 256, mem[_2119 + floor32(mem[_4052]) + 292])
                            call msg.sender.mem[_2119 + 292 len 4] with:
                                 gas gas_remaining wei
                                args mem[_2119 + 296 len _4229 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96] > 0:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_2119 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2119 + 296] = 32
                                    mem[_2119 + 328] = 50
                                    idx = 0
                                    while idx < 50:
                                        mem[_2119 + idx + 360] = mem[_2119 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2119 + 392] = mem[_2119 + 406 len 18]
                                    revert with memory
                                      from mem[64]
                                       len _2119 + -mem[64] + 424
                                require mem[96] >= 32
                                require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2119 + 404 len 20]
                            else:
                                mem[64] = _2119 + ceil32(return_data.size) + 293
                                mem[_2119 + 292] = return_data.size
                                mem[_2119 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_2119 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_2119 + ceil32(return_data.size) + 297] = 32
                                    idx = 0
                                    while idx < 50:
                                        mem[_2119 + ceil32(return_data.size) + idx + 361] = mem[_2119 + idx + 228]
                                        idx = idx + 32
                                        continue 
                                    mem[_2119 + ceil32(return_data.size) + 393] = mem[_2119 + ceil32(return_data.size) + 407 len 18]
                                    revert with 0, 32, 50, mem[_2119 + ceil32(return_data.size) + 361 len 64]
                                require return_data.size >= 32
                                require Mask(32, 224, mem[_2119 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[_2119 + ceil32(return_data.size) + 405 len 20]
                ('bool', ('stor', ('map', ('stor', ('length', ('name', 'stor3', 3))), ('name', 'stor4', 4))))
                mem[32] = 10
                mem[0] = sha3(tokenByIndex.length, 10)
                stor10[stor3.length].field_0 = (2 * mem[96]) + 1
                t = sha3(sha3(tokenByIndex.length, 10))
                s = 128
                while mem[96] + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(tokenByIndex.length, 10)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(sha3(tokenByIndex.length, 10)) + (stor10[stor3.length].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        else:
            if arg2 != 2:
                require 0 == msg.value
                idx = 0
                while idx < arg1:
                    _1992 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1992] = 0
                    require msg.sender
                    require not stor4[stor3.length]
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            require stor4[stor3.length] - 1 < tokenByIndex.length
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2128 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1992 + s + 32]
                                    s = s + 32
                                    continue 
                                _4008 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4008 + 32] = mem[_4008 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2128 + 292
                                mem[_2128 + 196] = 50
                                mem[_2128 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2128 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4185 = mem[_4008]
                                t = _4008 + 32
                                u = _2128 + 292
                                s = mem[_4008]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2128 + floor32(mem[_4008]) + 292] = mem[_4008 + -(mem[_4008] % 32) + floor32(mem[_4008]) + 64 len mem[_4008] % 32] or Mask(8 * -(mem[_4008] % 32) + 32, -(8 * -(mem[_4008] % 32) + 32) + 256, mem[_2128 + floor32(mem[_4008]) + 292])
                                call msg.sender.mem[_2128 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2128 + 296 len _4185 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2128 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2128 + 296] = 32
                                        mem[_2128 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2128 + idx + 360] = mem[_2128 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2128 + 392] = mem[_2128 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2128 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2128 + 404 len 20]
                                else:
                                    mem[64] = _2128 + ceil32(return_data.size) + 293
                                    mem[_2128 + 292] = return_data.size
                                    mem[_2128 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2128 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2128 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2128 + ceil32(return_data.size) + idx + 361] = mem[_2128 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2128 + ceil32(return_data.size) + 393] = mem[_2128 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2128 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2128 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2128 + ceil32(return_data.size) + 405 len 20]
                        else:
                            _2024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2024] = tokenByIndex.length
                            mem[_2024 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2104 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1992 + s + 32]
                                    s = s + 32
                                    continue 
                                _4012 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4012 + 32] = mem[_4012 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2104 + 292
                                mem[_2104 + 196] = 50
                                mem[_2104 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2104 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4189 = mem[_4012]
                                t = _4012 + 32
                                u = _2104 + 292
                                s = mem[_4012]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2104 + floor32(mem[_4012]) + 292] = mem[_4012 + -(mem[_4012] % 32) + floor32(mem[_4012]) + 64 len mem[_4012] % 32] or Mask(8 * -(mem[_4012] % 32) + 32, -(8 * -(mem[_4012] % 32) + 32) + 256, mem[_2104 + floor32(mem[_4012]) + 292])
                                call msg.sender.mem[_2104 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2104 + 296 len _4189 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2104 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2104 + 296] = 32
                                        mem[_2104 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2104 + idx + 360] = mem[_2104 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2104 + 392] = mem[_2104 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2104 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2104 + 404 len 20]
                                else:
                                    mem[64] = _2104 + ceil32(return_data.size) + 293
                                    mem[_2104 + 292] = return_data.size
                                    mem[_2104 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2104 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2104 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2104 + ceil32(return_data.size) + idx + 361] = mem[_2104 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2104 + ceil32(return_data.size) + 393] = mem[_2104 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2104 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2104 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2104 + ceil32(return_data.size) + 405 len 20]
                    else:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            require stor4[stor3.length] - 1 < tokenByIndex.length
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2131 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1992 + s + 32]
                                    s = s + 32
                                    continue 
                                _4016 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4016 + 32] = mem[_4016 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2131 + 292
                                mem[_2131 + 196] = 50
                                mem[_2131 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2131 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4193 = mem[_4016]
                                t = _4016 + 32
                                u = _2131 + 292
                                s = mem[_4016]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2131 + floor32(mem[_4016]) + 292] = mem[_4016 + -(mem[_4016] % 32) + floor32(mem[_4016]) + 64 len mem[_4016] % 32] or Mask(8 * -(mem[_4016] % 32) + 32, -(8 * -(mem[_4016] % 32) + 32) + 256, mem[_2131 + floor32(mem[_4016]) + 292])
                                call msg.sender.mem[_2131 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2131 + 296 len _4193 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2131 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2131 + 296] = 32
                                        mem[_2131 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2131 + idx + 360] = mem[_2131 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2131 + 392] = mem[_2131 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2131 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2131 + 404 len 20]
                                else:
                                    mem[64] = _2131 + ceil32(return_data.size) + 293
                                    mem[_2131 + 292] = return_data.size
                                    mem[_2131 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2131 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2131 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2131 + ceil32(return_data.size) + idx + 361] = mem[_2131 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2131 + ceil32(return_data.size) + 393] = mem[_2131 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2131 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2131 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2131 + ceil32(return_data.size) + 405 len 20]
                        else:
                            _2029 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2029] = tokenByIndex.length
                            mem[_2029 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2107 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1992 + s + 32]
                                    s = s + 32
                                    continue 
                                _4020 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4020 + 32] = mem[_4020 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2107 + 292
                                mem[_2107 + 196] = 50
                                mem[_2107 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2107 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4197 = mem[_4020]
                                t = _4020 + 32
                                u = _2107 + 292
                                s = mem[_4020]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2107 + floor32(mem[_4020]) + 292] = mem[_4020 + -(mem[_4020] % 32) + floor32(mem[_4020]) + 64 len mem[_4020] % 32] or Mask(8 * -(mem[_4020] % 32) + 32, -(8 * -(mem[_4020] % 32) + 32) + 256, mem[_2107 + floor32(mem[_4020]) + 292])
                                call msg.sender.mem[_2107 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2107 + 296 len _4197 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2107 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2107 + 296] = 32
                                        mem[_2107 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2107 + idx + 360] = mem[_2107 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2107 + 392] = mem[_2107 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2107 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2107 + 404 len 20]
                                else:
                                    mem[64] = _2107 + ceil32(return_data.size) + 293
                                    mem[_2107 + 292] = return_data.size
                                    mem[_2107 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2107 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2107 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2107 + ceil32(return_data.size) + idx + 361] = mem[_2107 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2107 + ceil32(return_data.size) + 393] = mem[_2107 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2107 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2107 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2107 + ceil32(return_data.size) + 405 len 20]
                    ('bool', ('stor', ('map', ('stor', ('length', ('name', 'stor3', 3))), ('name', 'stor4', 4))))
                    mem[32] = 10
                    mem[0] = sha3(tokenByIndex.length, 10)
                    stor10[stor3.length].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(tokenByIndex.length, 10))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(tokenByIndex.length, 10)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(tokenByIndex.length, 10)) + (stor10[stor3.length].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            else:
                if 4 * 10^16 * arg1 / 4 * 10^16 != arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg3.length) + 229 len 31]
                require 4 * 10^16 * arg1 == msg.value
                idx = 0
                while idx < arg1:
                    _1993 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1993] = 0
                    require msg.sender
                    require not stor4[stor3.length]
                    if tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length]:
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            require stor4[stor3.length] - 1 < tokenByIndex.length
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2134 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1993 + s + 32]
                                    s = s + 32
                                    continue 
                                _4024 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4024 + 32] = mem[_4024 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2134 + 292
                                mem[_2134 + 196] = 50
                                mem[_2134 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2134 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4201 = mem[_4024]
                                t = _4024 + 32
                                u = _2134 + 292
                                s = mem[_4024]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2134 + floor32(mem[_4024]) + 292] = mem[_4024 + -(mem[_4024] % 32) + floor32(mem[_4024]) + 64 len mem[_4024] % 32] or Mask(8 * -(mem[_4024] % 32) + 32, -(8 * -(mem[_4024] % 32) + 32) + 256, mem[_2134 + floor32(mem[_4024]) + 292])
                                call msg.sender.mem[_2134 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2134 + 296 len _4201 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2134 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2134 + 296] = 32
                                        mem[_2134 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2134 + idx + 360] = mem[_2134 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2134 + 392] = mem[_2134 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2134 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2134 + 404 len 20]
                                else:
                                    mem[64] = _2134 + ceil32(return_data.size) + 293
                                    mem[_2134 + 292] = return_data.size
                                    mem[_2134 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2134 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2134 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2134 + ceil32(return_data.size) + idx + 361] = mem[_2134 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2134 + ceil32(return_data.size) + 393] = mem[_2134 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2134 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2134 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2134 + ceil32(return_data.size) + 405 len 20]
                        else:
                            _2034 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2034] = tokenByIndex.length
                            mem[_2034 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2110 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1993 + s + 32]
                                    s = s + 32
                                    continue 
                                _4028 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4028 + 32] = mem[_4028 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2110 + 292
                                mem[_2110 + 196] = 50
                                mem[_2110 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2110 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4205 = mem[_4028]
                                t = _4028 + 32
                                u = _2110 + 292
                                s = mem[_4028]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2110 + floor32(mem[_4028]) + 292] = mem[_4028 + -(mem[_4028] % 32) + floor32(mem[_4028]) + 64 len mem[_4028] % 32] or Mask(8 * -(mem[_4028] % 32) + 32, -(8 * -(mem[_4028] % 32) + 32) + 256, mem[_2110 + floor32(mem[_4028]) + 292])
                                call msg.sender.mem[_2110 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2110 + 296 len _4205 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2110 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2110 + 296] = 32
                                        mem[_2110 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2110 + idx + 360] = mem[_2110 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2110 + 392] = mem[_2110 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2110 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2110 + 404 len 20]
                                else:
                                    mem[64] = _2110 + ceil32(return_data.size) + 293
                                    mem[_2110 + 292] = return_data.size
                                    mem[_2110 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2110 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2110 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2110 + ceil32(return_data.size) + idx + 361] = mem[_2110 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2110 + ceil32(return_data.size) + 393] = mem[_2110 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2110 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2110 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2110 + ceil32(return_data.size) + 405 len 20]
                    else:
                        tokenOfOwnerByIndex[address(msg.sender)]++
                        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
                        tokenOfOwnerByIndex[address(msg.sender)][1][stor3.length] = tokenOfOwnerByIndex[address(msg.sender)]
                        mem[0] = tokenByIndex.length
                        mem[32] = 4
                        if stor4[stor3.length]:
                            require stor4[stor3.length] - 1 < tokenByIndex.length
                            mem[0] = 3
                            address(tokenByIndex[stor4[tokenByIndex.length] - 1].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[stor4[tokenByIndex.length] - 1].field_416) = 0
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2137 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1993 + s + 32]
                                    s = s + 32
                                    continue 
                                _4032 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4032 + 32] = mem[_4032 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2137 + 292
                                mem[_2137 + 196] = 50
                                mem[_2137 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2137 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4209 = mem[_4032]
                                t = _4032 + 32
                                u = _2137 + 292
                                s = mem[_4032]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2137 + floor32(mem[_4032]) + 292] = mem[_4032 + -(mem[_4032] % 32) + floor32(mem[_4032]) + 64 len mem[_4032] % 32] or Mask(8 * -(mem[_4032] % 32) + 32, -(8 * -(mem[_4032] % 32) + 32) + 256, mem[_2137 + floor32(mem[_4032]) + 292])
                                call msg.sender.mem[_2137 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2137 + 296 len _4209 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2137 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2137 + 296] = 32
                                        mem[_2137 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2137 + idx + 360] = mem[_2137 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2137 + 392] = mem[_2137 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2137 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2137 + 404 len 20]
                                else:
                                    mem[64] = _2137 + ceil32(return_data.size) + 293
                                    mem[_2137 + 292] = return_data.size
                                    mem[_2137 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2137 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2137 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2137 + ceil32(return_data.size) + idx + 361] = mem[_2137 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2137 + ceil32(return_data.size) + 393] = mem[_2137 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2137 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2137 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2137 + ceil32(return_data.size) + 405 len 20]
                        else:
                            _2039 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2039] = tokenByIndex.length
                            mem[_2039 + 32] = msg.sender
                            tokenByIndex.length++
                            tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
                            address(tokenByIndex[tokenByIndex.length].field_256) = msg.sender
                            Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
                            mem[0] = tokenByIndex.length
                            mem[32] = 4
                            stor4[stor3.length] = tokenByIndex.length
                            emit Transfer(0, msg.sender, tokenByIndex.length);
                            if ext_code.size(msg.sender) <= 0:
                                if not stor4[stor3.length]:
                                    revert with 0, 
                                                32,
                                                44,
                                                0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                mem[mem[64] + 112 len 20]
                            else:
                                _2113 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = tokenByIndex.length
                                mem[mem[64] + 132] = 128
                                mem[mem[64] + 164] = 0
                                s = 0
                                while s < 0:
                                    mem[mem[64] + s + 196] = mem[_1993 + s + 32]
                                    s = s + 32
                                    continue 
                                _4036 = mem[64]
                                mem[mem[64]] = 164
                                mem[64] = mem[64] + 196
                                mem[_4036 + 32] = mem[_4036 + 36 len 28] or 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[64] = _2113 + 292
                                mem[_2113 + 196] = 50
                                mem[_2113 + 228 len 50] = 0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_2113 + 398 len 26]
                                if ext_code.size(msg.sender) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                _4213 = mem[_4036]
                                t = _4036 + 32
                                u = _2113 + 292
                                s = mem[_4036]
                                while s >= 32:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s - 32
                                    continue 
                                mem[_2113 + floor32(mem[_4036]) + 292] = mem[_4036 + -(mem[_4036] % 32) + floor32(mem[_4036]) + 64 len mem[_4036] % 32] or Mask(8 * -(mem[_4036] % 32) + 32, -(8 * -(mem[_4036] % 32) + 32) + 256, mem[_2113 + floor32(mem[_4036]) + 292])
                                call msg.sender.mem[_2113 + 292 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_2113 + 296 len _4213 - 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96] > 0:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        mem[_2113 + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2113 + 296] = 32
                                        mem[_2113 + 328] = 50
                                        idx = 0
                                        while idx < 50:
                                            mem[_2113 + idx + 360] = mem[_2113 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2113 + 392] = mem[_2113 + 406 len 18]
                                        revert with memory
                                          from mem[64]
                                           len _2113 + -mem[64] + 424
                                    require mem[96] >= 32
                                    require Mask(32, 224, mem[128]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2113 + 404 len 20]
                                else:
                                    mem[64] = _2113 + ceil32(return_data.size) + 293
                                    mem[_2113 + 292] = return_data.size
                                    mem[_2113 + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_2113 + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_2113 + ceil32(return_data.size) + 297] = 32
                                        idx = 0
                                        while idx < 50:
                                            mem[_2113 + ceil32(return_data.size) + idx + 361] = mem[_2113 + idx + 228]
                                            idx = idx + 32
                                            continue 
                                        mem[_2113 + ceil32(return_data.size) + 393] = mem[_2113 + ceil32(return_data.size) + 407 len 18]
                                        revert with 0, 32, 50, mem[_2113 + ceil32(return_data.size) + 361 len 64]
                                    require return_data.size >= 32
                                    require Mask(32, 224, mem[_2113 + 324]) == 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    if not stor4[stor3.length]:
                                        revert with 0, 
                                                    32,
                                                    44,
                                                    0x774552433732314d657461646174613a2055524920736574206f66206e6f6e6578697374656e7420746f6b65,
                                                    mem[_2113 + ceil32(return_data.size) + 405 len 20]
                    ('bool', ('stor', ('map', ('stor', ('length', ('name', 'stor3', 3))), ('name', 'stor4', 4))))
                    mem[32] = 10
                    mem[0] = sha3(tokenByIndex.length, 10)
                    stor10[stor3.length].field_0 = (2 * mem[96]) + 1
                    t = sha3(sha3(tokenByIndex.length, 10))
                    s = 128
                    while mem[96] + 128 > s:
                        stor[t] = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(tokenByIndex.length, 10)) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3(sha3(tokenByIndex.length, 10)) + (stor10[stor3.length].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
}



}
