contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
mapping of struct stor10;
uint256 stor11;
address owner;
uint256 mintPrice;
uint256 sub_c833e258;
mapping of struct stor15;
mapping of struct stor16;
array of struct stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
array of struct stor20;
array of struct stor21;
uint256 claimCount;
uint256 stor23;
array of uint256 stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function exist(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getTokenCount() {
    return stor20.length
}

function owner() {
    return owner
}

function getClaimCount() {
    return claimCount
}

function isWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function sub_c833e258(?) {
    return sub_c833e258
}

function sub_e126eb09(?) {
    return stor21.length
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a8f68916(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c833e258 = arg1
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPrice = arg1
}

function setOperator(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = uint8(arg2)
}

function sub_4c5fe217(?) {
    require calldata.size - 4 >= 96
    if not stor19[msg.sender]:
        revert with 0, 'AstronCats: attribute error'
    if arg2 >= uint256(stor17[arg1].field_0):
        revert with 0, 50
    uint256(stor17[arg1][arg2].field_0) = arg3
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() {
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor11 = 1
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getTokenIds() {
    if stor20.length:
        mem[128] = uint256(stor20.field_0)
        idx = 128
        s = 0
        while (32 * stor20.length) + 96 > idx:
            mem[idx + 32] = uint256(stor20[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor20.length, data=mem[128 len 32 * stor20.length])
    mem[(32 * stor20.length) + 128] = 32
    mem[(32 * stor20.length) + 160] = stor20.length
    mem[(32 * stor20.length) + 192 len 32 * stor20.length] = mem[128 len 32 * stor20.length]
    return memory
      from (32 * stor20.length) + 128
       len (96 * stor20.length) + 64
}

function sub_7777e7a2(?) {
    if stor21.length:
        mem[128] = uint256(stor21.field_0)
        if (32 * stor21.length) + 32 > 64:
            mem[160] = uint256(stor21.field_256)
            idx = 160
            s = 1
            while (32 * stor21.length) + 96 > idx:
                mem[idx + 32] = uint256(stor21[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor21.length) + 128] = 32
    mem[(32 * stor21.length) + 160] = stor21.length
    mem[(32 * stor21.length) + 192 len 32 * stor21.length] = mem[128 len 32 * stor21.length]
    return memory
      from (32 * stor21.length) + 128
       len (96 * stor21.length) + 64
}

function sub_949453f7(?) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstronCats: URI query for nonexistent token'
    if uint256(stor17[arg1].field_0):
        mem[128] = uint256(stor17[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor17[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor17[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if arg2 > uint256(stor17[arg1].field_0):
        revert with 0, 'AstronCats: gene index error'
    if arg2 >= uint256(stor17[arg1].field_0):
        revert with 0, 50
    mem[(32 * uint256(stor17[arg1].field_0)) + 128] = mem[(32 * arg2) + 128]
    return memory
      from (32 * uint256(stor17[arg1].field_0)) + 128
       len 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getGene(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstronCats: URI query for nonexistent token'
    if uint256(stor17[arg1].field_0):
        mem[128] = uint256(stor17[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor17[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = uint256(stor17[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=uint256(stor17[arg1].field_0), data=mem[128 len 32 * uint256(stor17[arg1].field_0)])
    mem[(32 * uint256(stor17[arg1].field_0)) + 128] = 32
    mem[(32 * uint256(stor17[arg1].field_0)) + 160] = uint256(stor17[arg1].field_0)
    mem[(32 * uint256(stor17[arg1].field_0)) + 192 len 32 * uint256(stor17[arg1].field_0)] = mem[128 len 32 * uint256(stor17[arg1].field_0)]
    return memory
      from (32 * uint256(stor17[arg1].field_0)) + 128
       len (96 * uint256(stor17[arg1].field_0)) + 64
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length > 10:
        revert with 0, 'AstronCats: Wrong token address. max 10'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 18
        stor18[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor0[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor0[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_3ef780bc(?) {
    require calldata.size - 4 >= 32
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor15[arg1].field_0)):
                if 31 < uint255(uint256(stor15[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor15[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor15[arg1].field_1 % 128:
                if 31 < stor15[arg1].field_1 % 128:
                    mem[128] = uint256(stor15[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
        mem[ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) > uint255(uint256(stor15[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor15[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor15[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor15[arg1].field_0)) * 0.5)]), 
    if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(uint256(stor15[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor15[arg1].field_0)):
            if 31 < uint255(uint256(stor15[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor15[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor15[arg1].field_1 % 128:
            if 31 < stor15[arg1].field_1 % 128:
                mem[128] = uint256(stor15[arg1].field_0)
                idx = 128
                s = 0
                while stor15[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor15[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[arg1].field_8)
    mem[ceil32(stor15[arg1].field_1 % 128) + 192 len ceil32(stor15[arg1].field_1 % 128)] = mem[128 len ceil32(stor15[arg1].field_1 % 128)]
    if ceil32(stor15[arg1].field_1 % 128) > stor15[arg1].field_1 % 128:
        mem[stor15[arg1].field_1 % 128 + ceil32(stor15[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor15[arg1].field_0 % 128, data=mem[128 len ceil32(stor15[arg1].field_1 % 128)], mem[(2 * ceil32(stor15[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor15[arg1].field_1 % 128)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(uint256(stor10[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10[arg1].field_0):
            if bool(stor10[arg1].field_0) == uint255(uint256(stor10[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor10[arg1].field_0)):
                if 31 < uint255(uint256(stor10[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor10[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor10[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor10[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        else:
            if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor10[arg1].field_1 % 128:
                if 31 < stor10[arg1].field_1 % 128:
                    mem[128] = uint256(stor10[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor10[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
        mem[ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5) + 224 len ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5) > uint255(uint256(stor10[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor10[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor10[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)) + 224 len 2 * ceil32(uint255(uint256(stor10[arg1].field_0)) * 0.5)]), 
    if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(uint256(stor10[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor10[arg1].field_0)):
            if 31 < uint255(uint256(stor10[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor10[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor10[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor10[arg1].field_1 % 128:
            if 31 < stor10[arg1].field_1 % 128:
                mem[128] = uint256(stor10[arg1].field_0)
                idx = 128
                s = 0
                while stor10[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor10[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10[arg1].field_8)
    mem[ceil32(stor10[arg1].field_1 % 128) + 224 len ceil32(stor10[arg1].field_1 % 128)] = mem[128 len ceil32(stor10[arg1].field_1 % 128)]
    if ceil32(stor10[arg1].field_1 % 128) > stor10[arg1].field_1 % 128:
        mem[stor10[arg1].field_1 % 128 + ceil32(stor10[arg1].field_1 % 128) + 224] = 0
    return Array(len=stor10[arg1].field_0 % 128, data=mem[128 len ceil32(stor10[arg1].field_1 % 128)], mem[(2 * ceil32(stor10[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor10[arg1].field_1 % 128)]), 
}

function sub_72b10cde(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[36] + cd[s] + 67
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _192 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_192] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_192 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_192 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _192
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'AstronCats: Array error'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if not ownerOf[mem[(32 * idx) + 128]]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 15
            if bool(stor15[mem[(32 * idx) + 128]].field_0):
                if bool(stor15[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5 <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    uint8(stor15[mem[(32 * idx) + 128]].field_256) = 0
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 15
                    _299 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    if bool(stor15[mem[(32 * idx) + 128]].field_0):
                        if bool(stor15[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 15)
                        if not _299:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + ((uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = (2 * _299) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _299 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 15)) + (Mask(251, 0, _299 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + ((uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15[mem[(32 * idx) + 128]].field_0) == stor15[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 15)
                        if not _299:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + (stor15[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = (2 * _299) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _299 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 15)) + (Mask(251, 0, _299 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + (stor15[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    stor20.length++
                    mem[0] = 20
                    uint256(stor20[stor20.length].field_0) = mem[(32 * idx) + 128]
            else:
                if bool(stor15[mem[(32 * idx) + 128]].field_0) == stor15[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor15[mem[(32 * idx) + 128]].field_1 % 128 <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    uint8(stor15[mem[(32 * idx) + 128]].field_256) = 0
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 15
                    _304 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    if bool(stor15[mem[(32 * idx) + 128]].field_0):
                        if bool(stor15[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 15)
                        if not _304:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + ((uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = (2 * _304) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _304 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 15)) + (Mask(251, 0, _304 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + ((uint255(uint256(stor15[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15[mem[(32 * idx) + 128]].field_0) == stor15[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 15)
                        if not _304:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + (stor15[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor15[mem[(32 * idx) + 128]].field_0) = (2 * _304) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 15))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _304 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 15)) + (Mask(251, 0, _304 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 15)) + (stor15[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    stor20.length++
                    mem[0] = 20
                    uint256(stor20[stor20.length].field_0) = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_06112e87(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[36] + cd[s] + 67
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _192 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_192] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_192 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_192 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _192
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'AstronCats: Add Owner Token ids: Array error'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if not ownerOf[mem[(32 * idx) + 128]]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 16
            if bool(stor16[mem[(32 * idx) + 128]].field_0):
                if bool(stor16[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5 <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    uint8(stor16[mem[(32 * idx) + 128]].field_256) = 0
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 16
                    _299 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    if bool(stor16[mem[(32 * idx) + 128]].field_0):
                        if bool(stor16[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 16)
                        if not _299:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + ((uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = (2 * _299) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _299 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 16)) + (Mask(251, 0, _299 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + ((uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor16[mem[(32 * idx) + 128]].field_0) == stor16[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 16)
                        if not _299:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + (stor16[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = (2 * _299) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _299 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 16)) + (Mask(251, 0, _299 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + (stor16[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    stor21.length++
                    mem[0] = 21
                    uint256(stor21[stor21.length].field_0) = mem[(32 * idx) + 128]
            else:
                if bool(stor16[mem[(32 * idx) + 128]].field_0) == stor16[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor16[mem[(32 * idx) + 128]].field_1 % 128 <= 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    uint8(stor16[mem[(32 * idx) + 128]].field_256) = 0
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 16
                    _304 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
                    if bool(stor16[mem[(32 * idx) + 128]].field_0):
                        if bool(stor16[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 16)
                        if not _304:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + ((uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = (2 * _304) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _304 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 16)) + (Mask(251, 0, _304 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + ((uint255(uint256(stor16[mem[(32 * idx) + 128]].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor16[mem[(32 * idx) + 128]].field_0) == stor16[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(mem[(32 * idx) + 128], 16)
                        if not _304:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = 0
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + (stor16[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor16[mem[(32 * idx) + 128]].field_0) = (2 * _304) + 1
                            s = sha3(sha3(mem[(32 * idx) + 128], 16))
                            t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + 32
                            while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] + _304 + 32 > t:
                                uint256(stor[s].field_0) = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(mem[(32 * idx) + 128], 16)) + (Mask(251, 0, _304 + 31) >> 5)
                            while sha3(sha3(mem[(32 * idx) + 128], 16)) + (stor16[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    stor21.length++
                    mem[0] = 21
                    uint256(stor21[stor21.length].field_0) = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ad66d535(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require calldata.size > cd[68] + cd[s] + 67
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _662 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_662] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_662 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_662 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _662
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _659 = mem[ceil32(32 * ('cd', 4).length) + 97]
    if mem[ceil32(32 * ('cd', 4).length) + 97] != mem[96]:
        revert with 0, 'AstronCats: tokens must have the same number as target accounts'
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] != mem[96]:
        revert with 0, 'AstronCats: token uri must have the same number as target accounts'
    idx = 0
    while idx < _659:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _876 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if uint8(stor15[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]].field_256):
            revert with 0, 'AstronCats: token id must be not minted'
        if idx >= mem[96]:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]:
            revert with 0, 'ERC721: token already minted'
        stor9[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if mem[(32 * idx) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                if balanceOf[address(mem[(32 * idx) + 128])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[(32 * idx) + 128])]++
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                mem[32] = 2
                ownerOf[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
                emit Transfer(0, mem[(32 * idx) + 140 len 20], mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]);
                _902 = mem[64]
                mem[64] = mem[64] + 256
                mem[_902] = 0
                mem[_902 + 32] = 0
                mem[_902 + 64] = 0
                mem[_902 + 96] = 0
                mem[_902 + 128] = 0
                mem[_902 + 160] = 0
                mem[_902 + 192] = 0
                mem[_902 + 224] = 0
                mem[32] = 17
                uint256(stor17[_876].field_0) = 8
                mem[0] = sha3(_876, 17)
                t = sha3(sha3(_876, 17))
                s = _902
                while _902 + 256 > s:
                    uint8(stor[t].field_0) = mem[s + 31 len 1]
                    Mask(248, 0, stor[t].field_8) = 0
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(_876, 17)) + 8
                while sha3(sha3(_876, 17)) + uint256(stor17[_876].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                    revert with 0, 50
                if not ownerOf[_876]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = _876
                mem[32] = 10
                _1252 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
                if bool(stor10[_876].field_0):
                    if bool(stor10[_876].field_0) == uint255(uint256(stor10[_876].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_876, 10)
                    if not _1252:
                        uint256(stor10[_876].field_0) = 0
                        s = sha3(sha3(_876, 10))
                        while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var115001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var117001].field_0) == _876:
                            if var117004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var117004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var117004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var121001 == -1:
                            revert with 0, 17
                        if var127001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var129001].field_0) != _876:
                            if var133001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var129004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var129004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var129004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        uint256(stor10[_876].field_0) = (2 * _1252) + 1
                        s = sha3(sha3(_876, 10))
                        t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                        while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1252 + 32 > t:
                            uint256(stor[s].field_0) = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1252 + 31) >> 5)
                        while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var119001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var121001].field_0) == _876:
                            if var121004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var121004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var121004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var125001 == -1:
                            revert with 0, 17
                        if var131001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var133001].field_0) != _876:
                            if var137001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var133004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var133004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var133004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[_876].field_0) == stor10[_876].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_876, 10)
                    if not _1252:
                        uint256(stor10[_876].field_0) = 0
                        s = sha3(sha3(_876, 10))
                        while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var116001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var118001].field_0) == _876:
                            if var118004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var118004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var118004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var122001 == -1:
                            revert with 0, 17
                        if var128001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var130001].field_0) != _876:
                            if var134001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var130004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var130004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var130004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        uint256(stor10[_876].field_0) = (2 * _1252) + 1
                        s = sha3(sha3(_876, 10))
                        t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                        while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1252 + 32 > t:
                            uint256(stor[s].field_0) = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1252 + 31) >> 5)
                        while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var120001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var122001].field_0) == _876:
                            if var122004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var122004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var122004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var126001 == -1:
                            revert with 0, 17
                        if var132001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var134001].field_0) != _876:
                            if var138001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var134004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var134004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var134004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
            else:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(mem[(32 * idx) + 128])][stor3[address(mem[(32 * idx) + 128])]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                stor7[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = balanceOf[address(mem[(32 * idx) + 128])]
                if balanceOf[address(mem[(32 * idx) + 128])] > -2:
                    revert with 0, 17
                balanceOf[address(mem[(32 * idx) + 128])]++
                mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                mem[32] = 2
                ownerOf[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
                emit Transfer(0, mem[(32 * idx) + 140 len 20], mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]);
                _911 = mem[64]
                mem[64] = mem[64] + 256
                mem[_911] = 0
                mem[_911 + 32] = 0
                mem[_911 + 64] = 0
                mem[_911 + 96] = 0
                mem[_911 + 128] = 0
                mem[_911 + 160] = 0
                mem[_911 + 192] = 0
                mem[_911 + 224] = 0
                mem[32] = 17
                uint256(stor17[_876].field_0) = 8
                mem[0] = sha3(_876, 17)
                t = sha3(sha3(_876, 17))
                s = _911
                while _911 + 256 > s:
                    uint8(stor[t].field_0) = mem[s + 31 len 1]
                    Mask(248, 0, stor[t].field_8) = 0
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(_876, 17)) + 8
                while sha3(sha3(_876, 17)) + uint256(stor17[_876].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                    revert with 0, 50
                if not ownerOf[_876]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = _876
                mem[32] = 10
                _1255 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
                if bool(stor10[_876].field_0):
                    if bool(stor10[_876].field_0) == uint255(uint256(stor10[_876].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_876, 10)
                    if not _1255:
                        uint256(stor10[_876].field_0) = 0
                        s = sha3(sha3(_876, 10))
                        while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var120001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var122001].field_0) == _876:
                            if var122004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var122004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var122004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var126001 == -1:
                            revert with 0, 17
                        if var132001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var134001].field_0) != _876:
                            if var138001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var134004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var134004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var134004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        uint256(stor10[_876].field_0) = (2 * _1255) + 1
                        s = sha3(sha3(_876, 10))
                        t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                        while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1255 + 32 > t:
                            uint256(stor[s].field_0) = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1255 + 31) >> 5)
                        while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if idx >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var126001].field_0) == _876:
                            if var126004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var126004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var126004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var130001 == -1:
                            revert with 0, 17
                        if var136001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var138001].field_0) != _876:
                            if var142001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var138004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var138004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var138004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    if bool(stor10[_876].field_0) == stor10[_876].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_876, 10)
                    if not _1255:
                        uint256(stor10[_876].field_0) = 0
                        s = sha3(sha3(_876, 10))
                        while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var121001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var123001].field_0) == _876:
                            if var123004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var123004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var123004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var127001 == -1:
                            revert with 0, 17
                        if var133001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var135001].field_0) != _876:
                            if var139001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var135004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var135004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var135004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        uint256(stor10[_876].field_0) = (2 * _1255) + 1
                        s = sha3(sha3(_876, 10))
                        t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                        while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1255 + 32 > t:
                            uint256(stor[s].field_0) = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1255 + 31) >> 5)
                        while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 15
                        uint8(stor15[_876].field_256) = 1
                        if var125001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var127001].field_0) == _876:
                            if var127004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var127004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var127004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if var131001 == -1:
                            revert with 0, 17
                        if var137001 >= stor20.length:
                            revert with 0, 50
                        if uint256(stor20[var139001].field_0) != _876:
                            if var143001 == -1:
                                revert with 0, 17
                            # nil
                        else:
                            if var139004 < stor20.length:
                                if stor20.length < 1:
                                    revert with 0, 17
                                if stor20.length - 1 >= stor20.length:
                                    revert with 0, 50
                                if var139004 >= stor20.length:
                                    revert with 0, 50
                                uint256(stor20[var139004].field_0) = uint256(stor20[stor20.length].field_0)
                                if not stor20.length:
                                    revert with 0, 49
                                uint256(stor20[stor20.length].field_0) = 0
                                stor20.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = _876
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor9[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor9[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]]
            stor9[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(mem[(32 * idx) + 128])] > -2:
                revert with 0, 17
            balanceOf[address(mem[(32 * idx) + 128])]++
            mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            mem[32] = 2
            ownerOf[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]] = mem[(32 * idx) + 140 len 20]
            emit Transfer(0, mem[(32 * idx) + 140 len 20], mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]);
            _916 = mem[64]
            mem[64] = mem[64] + 256
            mem[_916] = 0
            mem[_916 + 32] = 0
            mem[_916 + 64] = 0
            mem[_916 + 96] = 0
            mem[_916 + 128] = 0
            mem[_916 + 160] = 0
            mem[_916 + 192] = 0
            mem[_916 + 224] = 0
            mem[32] = 17
            uint256(stor17[_876].field_0) = 8
            mem[0] = sha3(_876, 17)
            t = sha3(sha3(_876, 17))
            s = _916
            while _916 + 256 > s:
                uint8(stor[t].field_0) = mem[s + 31 len 1]
                Mask(248, 0, stor[t].field_8) = 0
                t = t + 1
                s = s + 32
                continue 
            s = sha3(sha3(_876, 17)) + 8
            while sha3(sha3(_876, 17)) + uint256(stor17[_876].field_0) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
                revert with 0, 50
            if not ownerOf[_876]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = _876
            mem[32] = 10
            _1258 = mem[mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]]
            if bool(stor10[_876].field_0):
                if bool(stor10[_876].field_0) == uint255(uint256(stor10[_876].field_0)) * 0.5 < 32:
                    revert with 0, 34
                mem[0] = sha3(_876, 10)
                if not _1258:
                    uint256(stor10[_876].field_0) = 0
                    s = sha3(sha3(_876, 10))
                    while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[32] = 15
                    uint8(stor15[_876].field_256) = 1
                    if var122001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[idx].field_0) == _876:
                        if var124004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var124004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var124004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if var128001 == -1:
                        revert with 0, 17
                    if var134001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var136001].field_0) != _876:
                        if var140001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if var136004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var136004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var136004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor10[_876].field_0) = (2 * _1258) + 1
                    s = sha3(sha3(_876, 10))
                    t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                    while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1258 + 32 > t:
                        uint256(stor[s].field_0) = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1258 + 31) >> 5)
                    while sha3(sha3(_876, 10)) + ((uint255(uint256(stor10[_876].field_0)) * 0.5) + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[32] = 15
                    uint8(stor15[_876].field_256) = 1
                    if var126001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var128001].field_0) == _876:
                        if var128004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var128004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var128004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if var132001 == -1:
                        revert with 0, 17
                    if var138001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var140001].field_0) != _876:
                        if var144001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if var140004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var140004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var140004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[_876].field_0) == stor10[_876].field_1 % 128 < 32:
                    revert with 0, 34
                mem[0] = sha3(_876, 10)
                if not _1258:
                    uint256(stor10[_876].field_0) = 0
                    s = sha3(sha3(_876, 10))
                    while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[32] = 15
                    uint8(stor15[_876].field_256) = 1
                    if var123001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var125001].field_0) == _876:
                        if var125004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var125004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var125004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if var129001 == -1:
                        revert with 0, 17
                    if var135001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var137001].field_0) != _876:
                        if var141001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if var137004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var137004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var137004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    uint256(stor10[_876].field_0) = (2 * _1258) + 1
                    s = sha3(sha3(_876, 10))
                    t = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + 32
                    while mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] + _1258 + 32 > t:
                        uint256(stor[s].field_0) = mem[t]
                        s = s + 1
                        t = t + 32
                        continue 
                    s = sha3(sha3(_876, 10)) + (Mask(251, 0, _1258 + 31) >> 5)
                    while sha3(sha3(_876, 10)) + (stor10[_876].field_1 % 128 + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[32] = 15
                    uint8(stor15[_876].field_256) = 1
                    if var127001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var129001].field_0) == _876:
                        if var129004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var129004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var129004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if var133001 == -1:
                        revert with 0, 17
                    if var139001 >= stor20.length:
                        revert with 0, 50
                    if uint256(stor20[var141001].field_0) != _876:
                        if var145001 == -1:
                            revert with 0, 17
                        # nil
                    else:
                        if var141004 < stor20.length:
                            if stor20.length < 1:
                                revert with 0, 17
                            if stor20.length - 1 >= stor20.length:
                                revert with 0, 50
                            if var141004 >= stor20.length:
                                revert with 0, 50
                            uint256(stor20[var141004].field_0) = uint256(stor20[stor20.length].field_0)
                            if not stor20.length:
                                revert with 0, 49
                            uint256(stor20[stor20.length].field_0) = 0
                            stor20.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = _876
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    stor11 = 1
}

function ownerClaim(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstronCats: Wrong token amount. max 10'
    if arg1 > stor21.length:
        revert with 0, 'AstronCats: Token is not enough'
    idx = 0
    while idx < arg1:
        if stor21.length < 1:
            revert with 0, 17
        if not stor21.length - 1:
            if 0 >= stor21.length:
                revert with 0, 50
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[uint256(stor21.field_0)]:
                revert with 0, 'ERC721: token already minted'
            stor9[uint256(stor21.field_0)] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = uint256(stor21.field_0)
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = uint256(stor21.field_0)
                    mem[32] = 2
                    ownerOf[uint256(stor21.field_0)] = msg.sender
                    emit Transfer(0, msg.sender, uint256(stor21.field_0));
                    _3267 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_3267] = 0
                    mem[_3267 + 32] = 0
                    mem[_3267 + 64] = 0
                    mem[_3267 + 96] = 0
                    mem[_3267 + 128] = 0
                    mem[_3267 + 160] = 0
                    mem[_3267 + 192] = 0
                    mem[_3267 + 224] = 0
                    mem[32] = 17
                    uint256(stor17[uint256(stor21.field_0)].field_0) = 8
                    mem[0] = sha3(uint256(stor21.field_0), 17)
                    t = sha3(sha3(uint256(stor21.field_0), 17))
                    s = _3267
                    while _3267 + 256 > s:
                        uint8(stor[t].field_0) = mem[s + 31 len 1]
                        Mask(248, 0, stor[t].field_8) = 0
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(uint256(stor21.field_0), 17)) + 8
                    while sha3(sha3(uint256(stor21.field_0), 17)) + uint256(stor17[uint256(stor21.field_0)].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[0] = uint256(stor21.field_0)
                    mem[32] = 16
                    if not bool(stor16[uint256(stor21.field_0)].field_0):
                        if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        _9612 = mem[64]
                        mem[64] = mem[64] + ceil32(stor16[uint256(stor21.field_0)].field_1 % 128) + 32
                        mem[_9612] = stor16[uint256(stor21.field_0)].field_1 % 128
                        if bool(stor16[uint256(stor21.field_0)].field_0):
                            if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    mem[_9612 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                else:
                                    mem[_9612 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9612 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9612 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor16[uint256(stor21.field_0)].field_1 % 128:
                                if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                    mem[_9612 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                else:
                                    mem[_9612 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9612 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9612 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[uint256(stor21.field_0)]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[uint256(stor21.field_0)].field_0):
                            if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21.field_0), 10)
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                s = _9612 + 32
                                while _9612 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21.field_0), 10)
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                s = _9612 + 32
                                while _9612 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _9606 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32
                        mem[_9606] = uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5
                        if bool(stor16[uint256(stor21.field_0)].field_0):
                            if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9606 + 32
                                                while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9606 + 32
                                                while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    mem[_9606 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_9606 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9606 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9606 + 32
                                                while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9606 + 32
                                                while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                    mem[_9606 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_9606 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9606 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9606 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9606 + 32
                                                    while _9606 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9606 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = uint256(stor21.field_0)
                    stor7[uint256(stor21.field_0)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = uint256(stor21.field_0)
                    mem[32] = 2
                    ownerOf[uint256(stor21.field_0)] = msg.sender
                    emit Transfer(0, msg.sender, uint256(stor21.field_0));
                    _3291 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_3291] = 0
                    mem[_3291 + 32] = 0
                    mem[_3291 + 64] = 0
                    mem[_3291 + 96] = 0
                    mem[_3291 + 128] = 0
                    mem[_3291 + 160] = 0
                    mem[_3291 + 192] = 0
                    mem[_3291 + 224] = 0
                    mem[32] = 17
                    uint256(stor17[uint256(stor21.field_0)].field_0) = 8
                    mem[0] = sha3(uint256(stor21.field_0), 17)
                    t = sha3(sha3(uint256(stor21.field_0), 17))
                    s = _3291
                    while _3291 + 256 > s:
                        uint8(stor[t].field_0) = mem[s + 31 len 1]
                        Mask(248, 0, stor[t].field_8) = 0
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3(sha3(uint256(stor21.field_0), 17)) + 8
                    while sha3(sha3(uint256(stor21.field_0), 17)) + uint256(stor17[uint256(stor21.field_0)].field_0) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                    mem[0] = uint256(stor21.field_0)
                    mem[32] = 16
                    if not bool(stor16[uint256(stor21.field_0)].field_0):
                        if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        _9613 = mem[64]
                        mem[64] = mem[64] + ceil32(stor16[uint256(stor21.field_0)].field_1 % 128) + 32
                        mem[_9613] = stor16[uint256(stor21.field_0)].field_1 % 128
                        if bool(stor16[uint256(stor21.field_0)].field_0):
                            if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    mem[_9613 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                else:
                                    mem[_9613 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9613 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9613 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor16[uint256(stor21.field_0)].field_1 % 128:
                                if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                    mem[_9613 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                else:
                                    mem[_9613 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9613 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9613 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if not ownerOf[uint256(stor21.field_0)]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[uint256(stor21.field_0)].field_0):
                            if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21.field_0), 10)
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                s = _9613 + 32
                                while _9613 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21.field_0), 10)
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                s = _9613 + 32
                                while _9613 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _9607 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32
                        mem[_9607] = uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5
                        if bool(stor16[uint256(stor21.field_0)].field_0):
                            if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9607 + 32
                                                while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9607 + 32
                                                while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    mem[_9607 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_9607 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9607 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                        else:
                            if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            if not stor16[uint256(stor21.field_0)].field_1 % 128:
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9607 + 32
                                                while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9607 + 32
                                                while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                    mem[_9607 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                else:
                                    mem[_9607 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                    s = _9607 + 32
                                    t = sha3(sha3(uint256(stor21.field_0), 16))
                                    while _9607 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    if not ownerOf[uint256(stor21.field_0)]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[32] = 10
                                    if bool(stor10[uint256(stor21.field_0)].field_0):
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                    else:
                                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(uint256(stor21.field_0), 10)
                                        if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                                uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                                if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                                else:
                                                    t = sha3(sha3(uint256(stor21.field_0), 10))
                                                    s = _9607 + 32
                                                    while _9607 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                        uint256(stor[t].field_0) = mem[s]
                                                        t = t + 1
                                                        s = s + 32
                                                        continue 
                                                    s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                        uint256(stor[s].field_0) = 0
                                                        s = s + 1
                                                        continue 
                                            else:
                                                bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                                uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                                Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9607 + 32 len 31]
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[uint256(stor21.field_0)] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[uint256(stor21.field_0)]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[uint256(stor21.field_0)]
                stor9[uint256(stor21.field_0)] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = uint256(stor21.field_0)
                mem[32] = 2
                ownerOf[uint256(stor21.field_0)] = msg.sender
                emit Transfer(0, msg.sender, uint256(stor21.field_0));
                _3300 = mem[64]
                mem[64] = mem[64] + 256
                mem[_3300] = 0
                mem[_3300 + 32] = 0
                mem[_3300 + 64] = 0
                mem[_3300 + 96] = 0
                mem[_3300 + 128] = 0
                mem[_3300 + 160] = 0
                mem[_3300 + 192] = 0
                mem[_3300 + 224] = 0
                mem[32] = 17
                uint256(stor17[uint256(stor21.field_0)].field_0) = 8
                mem[0] = sha3(uint256(stor21.field_0), 17)
                t = sha3(sha3(uint256(stor21.field_0), 17))
                s = _3300
                while _3300 + 256 > s:
                    uint8(stor[t].field_0) = mem[s + 31 len 1]
                    Mask(248, 0, stor[t].field_8) = 0
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint256(stor21.field_0), 17)) + 8
                while sha3(sha3(uint256(stor21.field_0), 17)) + uint256(stor17[uint256(stor21.field_0)].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                mem[0] = uint256(stor21.field_0)
                mem[32] = 16
                if not bool(stor16[uint256(stor21.field_0)].field_0):
                    if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    _9614 = mem[64]
                    mem[64] = mem[64] + ceil32(stor16[uint256(stor21.field_0)].field_1 % 128) + 32
                    mem[_9614] = stor16[uint256(stor21.field_0)].field_1 % 128
                    if bool(stor16[uint256(stor21.field_0)].field_0):
                        if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                            if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                mem[_9614 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                            else:
                                mem[_9614 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                s = _9614 + 32
                                t = sha3(sha3(uint256(stor21.field_0), 16))
                                while _9614 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor16[uint256(stor21.field_0)].field_1 % 128:
                            if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                mem[_9614 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                            else:
                                mem[_9614 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                s = _9614 + 32
                                t = sha3(sha3(uint256(stor21.field_0), 16))
                                while _9614 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if not ownerOf[uint256(stor21.field_0)]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[uint256(stor21.field_0)].field_0):
                        if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(uint256(stor21.field_0), 10)
                        if not stor16[uint256(stor21.field_0)].field_1 % 128:
                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                            s = sha3(sha3(uint256(stor21.field_0), 10))
                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                            t = sha3(sha3(uint256(stor21.field_0), 10))
                            s = _9614 + 32
                            while _9614 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(uint256(stor21.field_0), 10)
                        if not stor16[uint256(stor21.field_0)].field_1 % 128:
                            uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                            s = sha3(sha3(uint256(stor21.field_0), 10))
                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor10[uint256(stor21.field_0)].field_0) = (2 * stor16[uint256(stor21.field_0)].field_1 % 128) + 1
                            t = sha3(sha3(uint256(stor21.field_0), 10))
                            s = _9614 + 32
                            while _9614 + stor16[uint256(stor21.field_0)].field_1 % 128 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21.field_0)].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _9608 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32
                    mem[_9608] = uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5
                    if bool(stor16[uint256(stor21.field_0)].field_0):
                        if bool(stor16[uint256(stor21.field_0)].field_0) == uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                            if not ownerOf[uint256(stor21.field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21.field_0)].field_0):
                                if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21.field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21.field_0), 10))
                                            s = _9608 + 32
                                            while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21.field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21.field_0), 10))
                                            s = _9608 + 32
                                            while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                mem[_9608 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_9608 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                s = _9608 + 32
                                t = sha3(sha3(uint256(stor21.field_0), 16))
                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                    else:
                        if bool(stor16[uint256(stor21.field_0)].field_0) == stor16[uint256(stor21.field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor16[uint256(stor21.field_0)].field_1 % 128:
                            if not ownerOf[uint256(stor21.field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21.field_0)].field_0):
                                if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21.field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                    while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21.field_0), 10))
                                            s = _9608 + 32
                                            while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21.field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21.field_0), 10))
                                    while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21.field_0), 10))
                                            s = _9608 + 32
                                            while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= stor16[uint256(stor21.field_0)].field_1 % 128:
                                mem[_9608 + 32] = 256 * Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21.field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_9608 + 32] = uint256(stor16[uint256(stor21.field_0)].field_0)
                                s = _9608 + 32
                                t = sha3(sha3(uint256(stor21.field_0), 16))
                                while _9608 + stor16[uint256(stor21.field_0)].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21.field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21.field_0)].field_0):
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21.field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21.field_0)].field_0) == stor10[uint256(stor21.field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21.field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21.field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21.field_0), 10))
                                        while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21.field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21.field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21.field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21.field_0), 10))
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21.field_0), 10))
                                                s = _9608 + 32
                                                while _9608 + (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 32 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21.field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21.field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21.field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21.field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21.field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21.field_0)].field_8) = mem[_9608 + 32 len 31]
                                            s = sha3(sha3(uint256(stor21.field_0), 10))
                                            while sha3(sha3(uint256(stor21.field_0), 10)) + (stor10[uint256(stor21.field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
            mem[32] = 16
            uint8(stor16[uint256(stor21.field_0)].field_256) = 1
            if stor21.length < 1:
                revert with 0, 17
            if stor21.length - 1 >= stor21.length:
                revert with 0, 50
            if 0 >= stor21.length:
                revert with 0, 50
            uint256(stor21.field_0) = uint256(stor21[stor21.length].field_0)
            if not stor21.length:
                revert with 0, 49
            uint256(stor21[stor21.length].field_0) = 0
            stor21.length--
            claimCount++
            mem[0] = 22
            storD833[stor22] = uint256(stor21.field_0)
        else:
            _3231 = mem[64]
            mem[mem[64] + 32] = stor23
            mem[mem[64] + 64] = address(block.coinbase)
            mem[mem[64] + 84] = block.difficulty
            mem[mem[64] + 116] = block.number
            mem[mem[64] + 148] = block.timestamp
            _3232 = mem[64]
            mem[mem[64]] = 148
            mem[64] = mem[64] + 180
            _3234 = sha3(mem[_3232 + 32 len mem[_3232]])
            stor23 = sha3(mem[_3232 + 32 len mem[_3232]])
            if sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1 >= stor21.length:
                revert with 0, 50
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)]:
                revert with 0, 'ERC721: token already minted'
            stor9[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)
                    stor7[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] = msg.sender
                emit Transfer(0, msg.sender, uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0));
                mem[_3231 + 180] = 0
                mem[_3231 + 212] = 0
                mem[_3231 + 244] = 0
                mem[_3231 + 276] = 0
                mem[_3231 + 308] = 0
                mem[_3231 + 340] = 0
                mem[_3231 + 372] = 0
                mem[_3231 + 404] = 0
                uint256(stor17[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 8
                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17))
                s = _3231 + 180
                while _3231 + 436 > s:
                    uint8(stor[t].field_0) = mem[s + 31 len 1]
                    Mask(248, 0, stor[t].field_8) = 0
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17)) + 8
                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17)) + uint256(stor17[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if not bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[64] = _3231 + ceil32(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 468
                    mem[_3231 + 436] = stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                            if 31 >= uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            if 31 >= stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[32] = 10
                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                        if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                        if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                            s = _3231 + 468
                            while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                        if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                        else:
                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                            s = _3231 + 468
                            while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                uint256(stor[t].field_0) = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                else:
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[64] = _3231 + ceil32(uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468
                    mem[_3231 + 436] = uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                    else:
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)]
                stor9[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                ownerOf[uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0)] = msg.sender
                emit Transfer(0, msg.sender, uint256(stor21[sha3(mem[_3232 + 32 len mem[_3232]]) % stor21.length - 1].field_0));
                mem[_3231 + 180] = 0
                mem[_3231 + 212] = 0
                mem[_3231 + 244] = 0
                mem[_3231 + 276] = 0
                mem[_3231 + 308] = 0
                mem[_3231 + 340] = 0
                mem[_3231 + 372] = 0
                mem[_3231 + 404] = 0
                uint256(stor17[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 8
                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17))
                s = _3231 + 180
                while _3231 + 436 > s:
                    uint8(stor[t].field_0) = mem[s + 31 len 1]
                    Mask(248, 0, stor[t].field_8) = 0
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17)) + 8
                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 17)) + uint256(stor17[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
                if not bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[64] = _3231 + ceil32(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 468
                    mem[_3231 + 436] = stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            mem[32] = 16
                            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                            if stor21.length < 1:
                                revert with 0, 17
                            if stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            if _3234 % stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                            if not stor21.length:
                                revert with 0, 49
                            uint256(stor21[stor21.length].field_0) = 0
                            stor21.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                            mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            mem[32] = 16
                            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                            if stor21.length < 1:
                                revert with 0, 17
                            if stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            if _3234 % stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                            if not stor21.length:
                                revert with 0, 49
                            uint256(stor21[stor21.length].field_0) = 0
                            stor21.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                        s = _3231 + 468
                        t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                        while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 436 > s:
                            mem[s + 32] = uint256(stor1[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
                        if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                            if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                s = _3231 + 468
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            mem[32] = 16
                            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                            if stor21.length < 1:
                                revert with 0, 17
                            if stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            if _3234 % stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                            if not stor21.length:
                                revert with 0, 49
                            uint256(stor21[stor21.length].field_0) = 0
                            stor21.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                        if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            mem[32] = 16
                            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                            if stor21.length < 1:
                                revert with 0, 17
                            if stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            if _3234 % stor21.length - 1 >= stor21.length:
                                revert with 0, 50
                            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                            if not stor21.length:
                                revert with 0, 49
                            uint256(stor21[stor21.length].field_0) = 0
                            stor21.length--
                            claimCount++
                            mem[0] = 22
                            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                        t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                        s = _3231 + 468
                        while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                            uint256(stor[t].field_0) = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        mem[32] = 16
                        uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                        if stor21.length < 1:
                            revert with 0, 17
                        if stor21.length - 1 >= stor21.length:
                            revert with 0, 50
                        if _3234 % stor21.length - 1 >= stor21.length:
                            revert with 0, 50
                        uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                        if not stor21.length:
                            revert with 0, 49
                        uint256(stor21[stor21.length].field_0) = 0
                        stor21.length--
                        claimCount++
                        mem[0] = 22
                        storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                        if sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) == -1:
                            revert with 0, 17
                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) + 1
                        continue 
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                        if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[32] = 10
                        if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                            if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                s = _3231 + 468
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                            if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                s = _3231 + 468
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                    else:
                        if 31 >= stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                    t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    s = _3231 + 468
                                    while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                        uint256(stor[t].field_0) = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                            s = _3231 + 468
                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                            while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 436 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                    mem[32] = 16
                                    uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                                    if stor21.length < 1:
                                        revert with 0, 17
                                    if stor21.length - 1 >= stor21.length:
                                        revert with 0, 50
                                    if _3234 % stor21.length - 1 >= stor21.length:
                                        revert with 0, 50
                                    uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                                    if not stor21.length:
                                        revert with 0, 49
                                    uint256(stor21[stor21.length].field_0) = 0
                                    stor21.length--
                                    claimCount++
                                    mem[0] = 22
                                    storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                s = _3231 + 468
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                                mem[32] = 16
                                uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                                if stor21.length < 1:
                                    revert with 0, 17
                                if stor21.length - 1 >= stor21.length:
                                    revert with 0, 50
                                if _3234 % stor21.length - 1 >= stor21.length:
                                    revert with 0, 50
                                uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                                if not stor21.length:
                                    revert with 0, 49
                                uint256(stor21[stor21.length].field_0) = 0
                                stor21.length--
                                claimCount++
                                mem[0] = 22
                                storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                                if sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                            if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                            else:
                                uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = (2 * stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128) + 1
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                s = _3231 + 468
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 468 > s:
                                    uint256(stor[t].field_0) = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31) >> 5)
                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                    uint256(stor[s].field_0) = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[64] = _3231 + ceil32(uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468
                    mem[_3231 + 436] = uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5
                    if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                    else:
                        if bool(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                            if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[32] = 10
                            if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                            else:
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                    uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
                                else:
                                    if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                        if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                        else:
                            if 31 >= stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128:
                                mem[_3231 + 468] = 256 * Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = Mask(248, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8)
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                            else:
                                mem[_3231 + 468] = uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)
                                s = _3231 + 468
                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 16))
                                while _3231 + stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 436 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                if not ownerOf[uint256(stor21[_3234 % stor21.length - 1].field_0)]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[32] = 10
                                if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0):
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                        while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                            uint256(stor[s].field_0) = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                            else:
                                                t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                s = _3231 + 468
                                                while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                    uint256(stor[t].field_0) = mem[s]
                                                    t = t + 1
                                                    s = s + 32
                                                    continue 
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                        else:
                                            bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                            uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                            Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + ((uint255(uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                else:
                                    if bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) == stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)
                                    if not uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                        uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                    else:
                                        if 31 < uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5:
                                            uint256(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = Mask(254, 1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) + 1
                                            if not Mask(256, -1, uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)):
                                                s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                                while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                    uint256(stor[s].field_0) = 0
                                                    s = s + 1
                                                    continue 
                                                mem[32] = 16
                                                uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                                                if stor21.length < 1:
                                                    revert with 0, 17
                                                if stor21.length - 1 >= stor21.length:
                                                    revert with 0, 50
                                                if _3234 % stor21.length - 1 >= stor21.length:
                                                    revert with 0, 50
                                                uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                                                if not stor21.length:
                                                    revert with 0, 49
                                                uint256(stor21[stor21.length].field_0) = 0
                                                stor21.length--
                                                claimCount++
                                                mem[0] = 22
                                                storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            t = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                            s = _3231 + 468
                                            while _3231 + (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 468 > s:
                                                uint256(stor[t].field_0) = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (Mask(251, 0, (uint255(uint256(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0)) * 0.5) + 31) >> 5)
                                            while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                                uint256(stor[s].field_0) = 0
                                                s = s + 1
                                                continue 
                                            mem[32] = 16
                                            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
                                            if stor21.length < 1:
                                                revert with 0, 17
                                            if stor21.length - 1 >= stor21.length:
                                                revert with 0, 50
                                            if _3234 % stor21.length - 1 >= stor21.length:
                                                revert with 0, 50
                                            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
                                            if not stor21.length:
                                                revert with 0, 49
                                            uint256(stor21[stor21.length].field_0) = 0
                                            stor21.length--
                                            claimCount++
                                            mem[0] = 22
                                            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
                                            if sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) == -1:
                                                revert with 0, 17
                                            s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) + 1
                                            continue 
                                        bool(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_0) = 0
                                        uint255(stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1) = Mask(254, 0, stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1)
                                        Mask(248, 0, stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_8) = mem[_3231 + 468 len 31]
                                    s = sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10))
                                    while sha3(sha3(uint256(stor21[_3234 % stor21.length - 1].field_0), 10)) + (stor10[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_1 % 128 + 31 / 32) > s:
                                        uint256(stor[s].field_0) = 0
                                        s = s + 1
                                        continue 
            mem[32] = 16
            uint8(stor16[uint256(stor21[_3234 % stor21.length - 1].field_0)].field_256) = 1
            if stor21.length < 1:
                revert with 0, 17
            if stor21.length - 1 >= stor21.length:
                revert with 0, 50
            if _3234 % stor21.length - 1 >= stor21.length:
                revert with 0, 50
            uint256(stor21[_3234 % stor21.length - 1].field_0) = uint256(stor21[stor21.length].field_0)
            if not stor21.length:
                revert with 0, 49
            uint256(stor21[stor21.length].field_0) = 0
            stor21.length--
            claimCount++
            mem[0] = 22
            storD833[stor22] = uint256(stor21[_3234 % stor21.length - 1].field_0)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor11 = 1
}



}
