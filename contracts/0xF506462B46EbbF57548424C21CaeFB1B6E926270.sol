contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - viewHolderNFTs(address arg1)
#  - mintWithUsdc(string arg1, uint256 arg2)
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
address owner;
address stor11;
address stor12;
array of struct viewInfo;
array of uint256 stor97569884605916225051403212656556507955018248777258318895762758024193532305078;
array of address stor97569884605916225051403212656556507955018248777258318895762758024193532305079;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= tokenOfOwnerByIndex[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function viewInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < viewInfo.length
    return viewInfo[arg1].field_0, viewInfo[arg1].field_256, viewInfo[arg1].field_512
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableMap: index out of bounds'
    return tokenByIndex[arg1].field_0
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[arg1]:
        revert with 0, 
                    32,
                    41,
                    0x724552433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[169 len 23] >> 72,
                    0
    require stor3[arg1] - 1 < tokenByIndex.length
    return tokenByIndex[stor3[arg1] - 1].field_256
}

function baseURI() payable {
    return baseURI[0 len baseURI.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return tokenOfOwnerByIndex[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if 0 == baseURI.length:
        var36001 = ceil32(stor8[arg1].length)
        return Array(len=stor8[arg1].length, data=mem[128 len ceil32(stor8[arg1].length)])
    if stor8[arg1].length:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var34001 = ceil32(baseURI.length)
        if ceil32(baseURI.length) > baseURI.length:
            mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192] = 0
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192 len ceil32(stor8[arg1].length)] = mem[128 len ceil32(stor8[arg1].length)]
        var40001 = ceil32(stor8[arg1].length)
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 192] = 32
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 224] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]
        mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]) > mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160]:
            mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160] + stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = 0
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160], data=mem[stor8[arg1].length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 160])]), 
    if not arg1:
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(baseURI.length)] = mem[ceil32(stor8[arg1].length) + 160 len ceil32(baseURI.length)]
        var38001 = ceil32(baseURI.length)
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 256] = '0'
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 257] = 32
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 289] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]
        mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]
        if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]) > mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224]:
            mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224] + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321] = 0
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224], data=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + baseURI.length + 321 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 224])]), 
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
        mem[baseURI.length + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224] = 0
    mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224 len ceil32(s)] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + 192 len ceil32(s)]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 224] = 32
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]
    mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])] = mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 224 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]
    if ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) <= mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]:
        return Array(len=mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192], data=mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192])]), 
    mem[mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192] + s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 288] = 0
    return 32, mem[s + ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + baseURI.length + 256 len ceil32(mem[ceil32(stor8[arg1].length) + ceil32(baseURI.length) + ceil32(s) + 192]) + 32], 
}

function mintWithUsdt(string arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(stor12)
    call stor12.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 16 * 10^6 * arg2
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if stor3[stor2.length]:
        revert with 0, 'ERC721: token already minted'
    if not tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length]:
        tokenOfOwnerByIndex[address(msg.sender)]++
        tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)]] = tokenByIndex.length
        tokenOfOwnerByIndex[address(msg.sender)][1][stor2.length] = tokenOfOwnerByIndex[address(msg.sender)]
    if stor3[stor2.length]:
        require stor3[stor2.length] - 1 < tokenByIndex.length
        tokenByIndex[stor3[tokenByIndex.length] - 1].field_256 = msg.sender
        tokenByIndex[stor3[tokenByIndex.length] - 1].field_416 = 0
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if ext_code.size(msg.sender):
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 452 len 192] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0
            call msg.sender with:
               funct Mask(32, 224, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(1280, -1056, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0) << 1056)
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length:
                        revert with arg1[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[ceil32(arg1.length) + ceil32(return_data.size) + 438 len 14] >> 144,
                                0
                require arg1.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[ceil32(arg1.length) + ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[ceil32(arg1.length) + ceil32(return_data.size) + 438 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[ceil32(arg1.length) + ceil32(return_data.size) + 484] == Mask(32, 224, mem[ceil32(arg1.length) + ceil32(return_data.size) + 484])
                if Mask(32, 224, mem[ceil32(arg1.length) + ceil32(return_data.size) + 484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length].field_0 = tokenByIndex.length
        tokenByIndex[tokenByIndex.length].field_256 = msg.sender
        tokenByIndex[tokenByIndex.length].field_416 = 0
        stor3[stor2.length] = tokenByIndex.length
        emit Transfer(0, msg.sender, tokenByIndex.length);
        if ext_code.size(msg.sender):
            if not ext_code.size(msg.sender):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 516 len 192] = onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0
            call msg.sender with:
               funct Mask(32, 224, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(1280, -1056, onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4), msg.sender, 0, tokenByIndex.length, 128, 0, 0) << 1056)
            if not return_data.size:
                if not ext_call.success:
                    if arg1.length:
                        revert with arg1[all]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[ceil32(arg1.length) + ceil32(return_data.size) + 502 len 14] >> 144,
                                0
                require arg1.length >= 32
                require mem[128] == Mask(32, 224, mem[128])
                if Mask(32, 224, mem[128]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                mem[ceil32(arg1.length) + ceil32(return_data.size) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                50,
                                0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465, mem[ceil32(arg1.length) + ceil32(return_data.size) + 502 len 14] >> 144,
                                0
                require return_data.size >= 32
                require mem[ceil32(arg1.length) + ceil32(return_data.size) + 548] == Mask(32, 224, mem[ceil32(arg1.length) + ceil32(return_data.size) + 548])
                if Mask(32, 224, mem[ceil32(arg1.length) + ceil32(return_data.size) + 548]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not stor3[stor2.length]:
        revert with 0, 'ERC721Metadata: URI set of nonexistent token'
    if arg1.length:
        stor8[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor8[stor2.length].field_0 = 0
        idx = 0
        while stor8[stor2.length].length + 31 / 32 > idx:
            stor8[stor2.length][idx].field_0 = 0
            idx = idx + 1
            continue 
    viewInfo.length++
    viewInfo[viewInfo.length].field_0 = arg2
    storD7B6[stor13.length] = block.timestamp
    storD7B6[stor13.length] = msg.sender
}

function withdrawCrypto() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(stor11):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call stor11 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stor12):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call stor12 with:
           funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if not ext_code.size(stor12):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call stor12 with:
       funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require calldata.size >= arg4.length + arg4 + 36
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
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 580] = arg4.length
            mem[ceil32(arg4.length) + 612 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 612] = 0
            mem[(2 * ceil32(arg4.length)) + 612] = 50
            mem[(2 * ceil32(arg4.length)) + 644 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
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
                    if arg4.length:
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
                    if return_data.size:
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
        if ext_code.size(arg2):
            mem[ceil32(arg4.length) + 644] = arg4.length
            mem[ceil32(arg4.length) + 676 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[arg4.length + ceil32(arg4.length) + 676] = 0
            mem[(2 * ceil32(arg4.length)) + 676] = 50
            mem[(2 * ceil32(arg4.length)) + 708 len 50] = 0xfe4552433732313a207472616e7366657220746f206e6f6e20455243373231526563656976657220696d706c656d656e7465
            if not ext_code.size(arg2):
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
                    if arg4.length:
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
                    if return_data.size:
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



}
