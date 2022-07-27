contract main {




// =====================  Runtime code  =====================


#
#  - sub_a478589a(?)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#
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
uint64 sub_c8cfe398; offset 160
address owner;
uint8 stor11; offset 64
mapping of address orderTo;

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

function orderToAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orderTo[arg1]
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
    return baseURI[0 len baseURI.length].field_0
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

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c8cfe398(?) {
    return sub_c8cfe398
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    stor11 = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
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

function withdrawMintFunds() {
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
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

function changeBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
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

function getAllTokensIdsOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    require tokenOfOwnerByIndex[address(arg1)] <= test266151307()
    if not tokenOfOwnerByIndex[address(arg1)]:
        if not arg1:
            revert with 0, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 238 len 22]
        if var48002 >= var48001:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)])]
            return memory
              from (32 * tokenOfOwnerByIndex[address(arg1)]) + 128
               len (96 * tokenOfOwnerByIndex[address(arg1)]) + 64
        if var56001 >= stor[var56002]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        require var58002 < stor[var58003]
        require var70002 < tokenOfOwnerByIndex[address(arg1)]
        # nil
    else:
        mem[128 len 32 * tokenOfOwnerByIndex[address(arg1)]] = call.data[calldata.size len 32 * tokenOfOwnerByIndex[address(arg1)]]
        if not arg1:
            revert with 0, 
                        32,
                        42,
                        0x6c4552433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 238 len 22]
        if var49002 >= var49001:
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 128] = 32
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 160] = tokenOfOwnerByIndex[address(arg1)]
            mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)])] = call.data[calldata.size len floor32(tokenOfOwnerByIndex[address(arg1)])]
            return memory
              from (32 * tokenOfOwnerByIndex[address(arg1)]) + 128
               len (96 * tokenOfOwnerByIndex[address(arg1)]) + 64
        if var57001 >= stor[var57002]:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * tokenOfOwnerByIndex[address(arg1)]) + 230 len 30]
        require var59002 < stor[var59003]
        require var71002 < tokenOfOwnerByIndex[address(arg1)]
        # nil
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[397 len 23]
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

function sub_75fc4e17(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'nOwnable: caller is not the owne'
    require arg1 <= 10000
    if arg1 <= 9999:
        sub_c8cfe398 = uint64(sub_c8cfe398 - 1)
    if not arg2:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[arg1]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(arg2)][1][arg1]:
        tokenOfOwnerByIndex[address(arg2)]++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg1
        tokenOfOwnerByIndex[address(arg2)][1][arg1] = tokenOfOwnerByIndex[address(arg2)]
    if stor3[arg1]:
        require stor3[arg1] - 1 < tokenByIndex.length
        address(tokenByIndex[stor3[arg1] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg1] - 1].field_416) = 0
        emit Transfer(0, arg2, arg1);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[420 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg1, 128, 0
            mem[608 len 4] = 0
            mem[580 len 0] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg1, 128, 0) << 1024, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[406 len 14], 0, 32, 50) >> 544
            mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[406 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[452]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 539 len 14]
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = arg1
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg1] = tokenByIndex.length
        emit Transfer(0, arg2, arg1);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[484 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg1, 128, 0
            mem[672 len 4] = 0
            mem[644 len 0] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, arg1, 128, 0) << 1024, mem[644 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[470 len 14], 0, 32, 50) >> 544
            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 0, 0x6563656976657220696d706c656d656e7465, mem[470 len 14])
            require return_data.size >= 32
            if Mask(32, 224, mem[516]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465,
                            mem[ceil32(return_data.size) + 603 len 14]
    emit 0x1f36d6eb: arg1, arg2
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor3[arg3]:
        revert with 0, 32, 44, 0x734552433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not stor3[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x734552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[201 len 23],
                    mem[247 len 9]
    require stor3[arg3] - 1 < tokenByIndex.length
    if address(tokenByIndex[stor3[arg3] - 1].field_256) != msg.sender:
        if not stor3[arg3]:
            revert with 0, 32, 44, 0x774552433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[336 len 20]
        if approved[arg3] != msg.sender:
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
        revert with 0, 32, 41, 0x724552433732313a207472616e73666572206f6620746f6b656e2074686174206973206e6f74206f77, mem[429 len 23]
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
        address(tokenByIndex[stor3[arg3] - 1].field_256) = arg2
        Mask(96, 0, tokenByIndex[stor3[arg3] - 1].field_416) = 0
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[708 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
            mem[896 len 4] = 0
            mem[868 len 0] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[868 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[694 len 14], 0, 32, 50) >> 544
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
        address(tokenByIndex[tokenByIndex.length].field_256) = arg2
        Mask(96, 0, tokenByIndex[tokenByIndex.length].field_416) = 0
        stor3[arg3] = tokenByIndex.length
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[772 len 160] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0
            mem[960 len 4] = 0
            mem[932 len 0] = 0
            call arg2.0x80 with:
                 gas gas_remaining wei
                args Mask(1248, -1024, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, address(arg1), arg3, 128, 0) << 1024, mem[932 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            50,
                            0x734552433732313a207472616e7366657220746f206e6f6e2045524337323152,
                            Mask(144, 544, 0x6563656976657220696d706c656d656e7465, mem[758 len 14], 0, 32, 50) >> 544
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

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6e4552433732314d657461646174613a2055524920717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[211 len 17]
    mem[32] = 8
    mem[96] = stor8[arg1].length
    mem[128] = stor8[arg1].field_0
    idx = 128
    s = 0
    while stor8[arg1].length + 96 > idx:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160
    mem[ceil32(stor8[arg1].length) + 128] = baseURI.length
    mem[0] = 9
    mem[ceil32(stor8[arg1].length) + 160] = uint256(baseURI.field_0)
    idx = ceil32(stor8[arg1].length) + 160
    s = 0
    while ceil32(stor8[arg1].length) + baseURI.length + 128 > idx:
        mem[idx + 32] = baseURI[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == baseURI.length:
        return Array(len=stor8[arg1].length, data=mem[128 len stor8[arg1].length])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 192] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len floor32(stor8[arg1].length)] = mem[128 len floor32(stor8[arg1].length)]
        var34001 = floor32(stor8[arg1].length) + 128
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 224 len stor8[arg1].length % 32] = mem[floor32(stor8[arg1].length) + -stor8[arg1].length % 32 + 160 len stor8[arg1].length % 32]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        var39001 = ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32:
            return 32, mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 288 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + 32]), 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        var35001 = ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = None
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 287 len 1] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len 0] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] = baseURI.length + 1
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len floor32(baseURI.length + 1)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)], mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length) + 256 len floor32(baseURI.length + 1) - floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(baseURI.length + 1) + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + floor32(baseURI.length + 1) + 289] and 256^(-(baseURI.length + 1 % 32) + 32) - 1 or mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(baseURI.length + 1) + 256 len baseURI.length + -floor32(baseURI.length + 1) + 31], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len -baseURI.length + floor32(baseURI.length + 1)] and !(256^(-(baseURI.length + 1 % 32) + 32) - 1)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 290] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 295
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 295] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 327] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 359 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1])]
        if not mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1] % 32:
            return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 327 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1] + 32], 
        mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 359] = mem[floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1] % 32) + 391 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1] % 32]
        return 32, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + (2 * baseURI.length) + 327 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257 len 30], 0, mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 288 len 1]) + 64], 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    require s <= test266151307()
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            require t - 1 < mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
            mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
        _2902 = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length
        _3179 = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)], mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) - floor32(baseURI.length)]
        mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 256] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 256] and 256^(-(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length % 32) + 32) - 1 or mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 224] and !(256^(-(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length % 32) + 32) - 1)
        mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[64] = (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 261
        mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 261] = 32
        mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 293] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]
        mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 325 len ceil32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224])] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224])]
        if not mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32:
            return 32, mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 293 len mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] + 32], 
        mem[floor32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 325] = mem[floor32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + -(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32) + 357 len mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32]
        return Array(len=mem[_2902 + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224], data=mem[_2902 + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + _3179 + 325 len floor32(mem[_2902 + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + 32]), 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        require t - 1 < mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[t + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len floor32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] = 256^(-baseURI.length % 32 + 32) - 1 and mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224] or mem[ceil32(stor8[arg1].length) + floor32(baseURI.length) + 160] and !(256^(-baseURI.length % 32 + 32) - 1)
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 256 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + -(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32) + 224 len mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] % 32]
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length
    _3185 = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length
    mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len floor32(baseURI.length)], mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(baseURI.length) + 224 len floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) - floor32(baseURI.length)]
    mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 256] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 256] and 256^(-(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length % 32) + 32) - 1 or mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + floor32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length) + 224] and !(256^(-(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + baseURI.length % 32) + 32) - 1)
    mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 256] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    mem[64] = (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 261
    mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 261] = 32
    mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 293] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]
    mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 325 len ceil32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224])] = mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224])]
    if not mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32:
        return 32, mem[(2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 293 len mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] + 32], 
    mem[floor32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + 325] = mem[floor32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + (2 * mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + (2 * baseURI.length) + -(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32) + 357 len mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] % 32]
    return Array(len=mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224], data=mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + _3185 + 325 len floor32(mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224]) + 32]), 
}



}
