contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of uint256 name;
array of uint256 symbol;
mapping of address rawOwnerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
address owner;
array of struct baseTokenURI;
uint256 totalToken;

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
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

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x64455243373231456e756d657261626c653a20676c6f62616c20696e646578206f7574206f6620626f756e64,
                    mem[208 len 20]
    return tokenByIndex[arg1]
}

function totalToken() payable {
    return totalToken
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return rawOwnerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function rawOwnerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return rawOwnerOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function baseTokenURI() payable {
    return baseTokenURI[0 len baseTokenURI.length].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return bool(stor0[Mask(32, 224, arg1)])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4552433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if rawOwnerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x6e4552433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    if not rawOwnerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(rawOwnerOf[arg2], arg1, arg2);
}

function walletOfOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require balanceOf[address(arg1)] <= test266151307()
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(32 * balanceOf[address(arg1)]) + 238 len 22]
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        43,
                        0xfe455243373231456e756d657261626c653a206f776e657220696e646578206f7574206f6620626f756e64,
                        mem[(32 * balanceOf[address(arg1)]) + 239 len 21]
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        require idx < balanceOf[address(arg1)]
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        idx = idx + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    if arg1.length:
        baseTokenURI[].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        baseTokenURI.length = 0
        idx = 0
        while baseTokenURI.length + 31 / 32 > idx:
            baseTokenURI[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit SetBaseURI(string arg1):
                        Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                        mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                        Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit SetBaseURI(string arg1):
                        Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                        mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                        Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                        mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    totalToken++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if rawOwnerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    stor10[arg2] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = arg2
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = arg2
            stor8[arg2] = balanceOf[address(arg1)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[arg2] < tokenByIndex.length
        tokenByIndex[stor10[arg2]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg2]
        stor10[arg2] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    balanceOf[address(arg1)]++
    rawOwnerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    if ext_code.size(arg1):
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, arg2, 128, 0
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

function mint(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    totalToken++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if rawOwnerOf[stor13 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor10[stor13 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalToken + 1
    if arg1:
        if arg1:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)]] = totalToken + 1
            stor8[stor13 + 1] = balanceOf[address(arg1)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[stor13 + 1] < tokenByIndex.length
        tokenByIndex[stor10[stor13 + 1]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[stor13 + 1]
        stor10[stor13 + 1] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    balanceOf[address(arg1)]++
    rawOwnerOf[stor13 + 1] = arg1
    emit Transfer(0, arg1, totalToken + 1);
    if ext_code.size(arg1):
        mem[228] = 128
        mem[260] = 0
        mem[292 len 0] = None
        require ext_code.size(arg1)
        call arg1.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, totalToken + 1, 128, 0
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not rawOwnerOf[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not rawOwnerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 32, 44, 0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not rawOwnerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if rawOwnerOf[arg3] != arg1:
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[237 len 23]
    if not arg2:
        revert with 0, 32, 36, 0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 32, 42, 0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573, mem[238 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[arg3] < tokenByIndex.length
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 32, 41, 0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[arg2]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if rawOwnerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[205 len 23]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        stor10[arg3] = tokenByIndex.length
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
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[206 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[arg3] < tokenByIndex.length
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[arg2]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = 3
    if not rawOwnerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[96] = baseTokenURI.length
    mem[0] = 12
    mem[128] = uint256(baseTokenURI.field_0)
    idx = 128
    s = 0
    while baseTokenURI.length + 96 > idx:
        mem[idx + 32] = baseTokenURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if baseTokenURI.length <= 0:
        var20001 = 0
        return ''
    if not arg1:
        mem[ceil32(baseTokenURI.length) + 128] = 1
        mem[ceil32(baseTokenURI.length) + 224 len floor32(baseTokenURI.length)] = mem[128 len floor32(baseTokenURI.length)]
        mem[ceil32(baseTokenURI.length) + floor32(baseTokenURI.length) + 224] = 256^(-baseTokenURI.length % 32 + 32) - 1 and mem[ceil32(baseTokenURI.length) + floor32(baseTokenURI.length) + 224] or mem[floor32(baseTokenURI.length) + 128] and !(256^(-baseTokenURI.length % 32 + 32) - 1)
        mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 224 len 0] = None
        mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 224 len 0] = 0
        mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 225] = 32
        mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 257] = mem[ceil32(baseTokenURI.length) + 192]
        mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 289 len ceil32(mem[ceil32(baseTokenURI.length) + 192])] = mem[ceil32(baseTokenURI.length) + 224 len ceil32(mem[ceil32(baseTokenURI.length) + 192])]
        if not mem[ceil32(baseTokenURI.length) + 192] % 32:
            return 32, mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 257 len mem[ceil32(baseTokenURI.length) + 192] + 32]
        mem[floor32(mem[ceil32(baseTokenURI.length) + 192]) + ceil32(baseTokenURI.length) + baseTokenURI.length + 289] = mem[floor32(mem[ceil32(baseTokenURI.length) + 192]) + ceil32(baseTokenURI.length) + baseTokenURI.length + -(mem[ceil32(baseTokenURI.length) + 192] % 32) + 321 len mem[ceil32(baseTokenURI.length) + 192] % 32]
        return Array(len=mem[ceil32(baseTokenURI.length) + 192], data=mem[ceil32(baseTokenURI.length) + baseTokenURI.length + 289 len floor32(mem[ceil32(baseTokenURI.length) + 192]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(baseTokenURI.length) + 128] = s
    if s:
        mem[ceil32(baseTokenURI.length) + 160 len s] = call.data[calldata.size len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < s
        mem[t + ceil32(baseTokenURI.length) + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(baseTokenURI.length) + ceil32(s) + 192 len floor32(baseTokenURI.length)] = mem[128 len floor32(baseTokenURI.length)]
    mem[ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length) + 192] = 256^(-baseTokenURI.length % 32 + 32) - 1 and mem[ceil32(baseTokenURI.length) + ceil32(s) + floor32(baseTokenURI.length) + 192] or mem[floor32(baseTokenURI.length) + 128] and !(256^(-baseTokenURI.length % 32 + 32) - 1)
    mem[ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 192 len floor32(s)] = mem[ceil32(baseTokenURI.length) + 160 len floor32(s)]
    mem[ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + floor32(s) + -(s % 32) + 224 len s % 32] = mem[ceil32(baseTokenURI.length) + floor32(s) + -(s % 32) + 192 len s % 32]
    mem[64] = s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 192
    mem[s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 192] = 32
    mem[s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 224] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]
    mem[s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 256 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160])] = mem[ceil32(baseTokenURI.length) + ceil32(s) + 192 len ceil32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160])]
    if not mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] % 32:
        return 32, mem[s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 224 len mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] + 32], 
    mem[floor32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]) + s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 256] = mem[floor32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]) + s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + -(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] % 32) + 288 len mem[ceil32(baseTokenURI.length) + ceil32(s) + 160] % 32]
    return 32, mem[s + ceil32(baseTokenURI.length) + ceil32(s) + baseTokenURI.length + 224 len floor32(mem[ceil32(baseTokenURI.length) + ceil32(s) + 160]) + 64], 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not rawOwnerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if rawOwnerOf[arg3] != msg.sender:
        if not rawOwnerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x6e4552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x724552433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not rawOwnerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if rawOwnerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77,
                    mem[ceil32(arg4.length) + 237 len 23]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x734552433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    if not arg1:
        stor10[arg3] = tokenByIndex.length
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
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 
                            32,
                            42,
                            0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                            mem[ceil32(arg4.length) + 238 len 22]
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        require tokenByIndex.length - 1 < tokenByIndex.length
        require stor10[arg3] < tokenByIndex.length
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        require tokenByIndex.length
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not rawOwnerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    emit Approval(rawOwnerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[arg2]++
    rawOwnerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
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



}
